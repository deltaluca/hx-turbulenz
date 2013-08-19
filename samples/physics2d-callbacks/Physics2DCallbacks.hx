package;

import turbulenz.*;
import turbulenz.graphics.draw2d.*;
import turbulenz.MathDevice;
import turbulenz.physics2d.*;
import turbulenz.physics2d.callback.*;
import turbulenz.physics2d.Constraint;

class Physics2DCallbacks {
    static function main() {
    TurbulenzEngine.onload = function () {
        //==================================================
        // Turbulenz Initialization
        //==================================================
        var gd = TurbulenzEngine.createGraphicsDevice({});
        var md = TurbulenzEngine.createMathDevice({});
        var id = TurbulenzEngine.createInputDevice({});

        var test = turbulenz.util.TZJS.embedJSON("test.json");
        var test = turbulenz.util.TZJS.parseJSON('{"x":[1,2]}');

        //==================================================
        // Phys2D/Draw2D
        //==================================================
        var phys2D = PhysicsDevice.create();
        var stageWidth = 30; // m
        var stageHeight = 22; // m

        // Use Draw2D just to set up nice viewport scaling of the debug draw.
        var draw2D = Draw2D.create({graphicsDevice: gd});
        var debug = DebugDraw.create({graphicsDevice: gd});
        draw2D.configure({
            viewportRectangle: [0, 0, stageWidth, stageHeight],
            scaleMode: draw2D.scale.scale
        });
        debug.setPhysics2DViewport(draw2D.getViewport());

        var world = phys2D.createWorld({
            gravity: [0, 20] // m/s/s
        });

        // group that objects breakable by spikes are given
        // for filtering event listeners.
        var breakGroup = 4;
        var shapeSize = 2;
        var boxShape = phys2D.createPolygonShape({
            vertices: phys2D.createBoxVertices(shapeSize, shapeSize),
            userData: {
                breakCount: 3,
                shapeSize: shapeSize
            },
            group: breakGroup
        });

        // Create a static body at (0, 0) with no rotation
        // Which we add to the world to use as the first body
        // In hand constraint. We set anchor for this body
        // as the cursor position in physics coordinates.
        var handReferenceBody = phys2D.createRigidBody({
            type: 'static'
        });
        world.addRigidBody(handReferenceBody);
        var handConstraint:PointConstraint = null;

        // Generate event listener for one-way platforms
        // given a direction of permitted movement through body.
        function oneWayListener(direction:Vector2) {
            return function (thisShape:Shape, arbiter:Arbiter, _) {
                var normal = arbiter.getNormal();

                // May need to flip directional logic if shapeA is not 'this'
                // as normals always point from shapeA to shapeB.
                var flip = (arbiter.shapeA != thisShape);

                if((md.v2Dot(normal, direction) < 0) == flip) {
                    // Ignore interaction, and make action persistent 'till
                    // objects seperate.
                    arbiter.setAcceptedState(false);
                    arbiter.setPersistentState(true);
                }
            };
        }

        // Event listener used for teleporter at bottom of stage.
        function teleportListener(_, _, otherShape:Shape) {
            var otherBody = otherShape.body;

            // Teleport to top of screen.
            var pos = otherBody.getPosition();
            pos.y = -1;
            otherBody.setPosition(pos);
        }

        // Event listener used for spikes to break apart objects.
        function spikeListener(_, arbiter:Arbiter, otherShape:Shape) {
            // Shape may have hit more than one spike, ensure we don't break it again
            // once already broken.
            var otherBody = otherShape.body;
            if(otherBody.world == null) {
                return;
            }

            // Assert that the impact was strong enough for spikes to break the box.
            var impulse = arbiter.getImpulseForBody(otherBody);
            if(md.v2Length(cast impulse) < (5 * otherBody.getMass())) {
                return;
            }

            world.removeRigidBody(otherBody);
            var shapeSize = (otherShape.userData.shapeSize / 2);
            var breakCount = (otherShape.userData.breakCount - 1);
            if(breakCount == 0) {
                // Object simply destroyed instead.
                return;
            }

            // Break shape into a 2x2 grid of smaller parts.
            // We only created square shapes, so this is easy
            for (x in 0...2) {
            for (y in 0...2) {
                var localPosition = [
                    (shapeSize / 2) * ((2 * x) - 1),
                    (shapeSize / 2) * ((2 * y) - 1)
                ];
                var burstVelocity = otherBody.transformLocalVectorToWorld(localPosition);

                var newBody = phys2D.createRigidBody({
                    position: otherBody.transformLocalPointToWorld(localPosition),
                    rotation: otherBody.getRotation(),
                    velocity: md.v2AddScalarMul(otherBody.getVelocity(), burstVelocity, 10),
                    angularVelocity: otherBody.getAngularVelocity()
                });

                var newShape = otherShape.clone();
                newShape.scale(1 / 2);
                newBody.addShape(newShape);

                // Set up for next level of breaking!
                newShape.userData = {
                    breakCount: breakCount,
                    shapeSize: shapeSize
                };
                newShape.setGroup(breakGroup);
                world.addRigidBody(newBody);
            }}
        }

        function lightTunnelListener(position:Vector2, direction:Vector2) {
            return function (_, _, otherShape:Shape) {
                var otherBody = otherShape.body;

                // Counteract gravity force on world.
                // 60 because our time step is (1 / 60) and gravity is a force.
                var mass = otherBody.getMass();
                var gravityImpulse = md.v2ScalarMul(world.getGravity(), -mass / 60);

                // Tunnel direction impulses.
                var tunnelImpulse = md.v2ScalarMul(direction, mass);

                // Impulse to guide body to centre of tunnel.
                var amount = md.v2PerpDot(md.v2Sub(otherBody.getPosition(), position), direction) * mass;
                var guideImpulse = md.v2Build(-direction.y * amount, direction.x * amount);

                // Add a velocity dampener.
                md.v2AddScalarMul(guideImpulse, otherBody.getVelocity(), -mass * 0.1, guideImpulse);
                otherBody.applyImpulse(gravityImpulse);
                otherBody.applyImpulse(tunnelImpulse);
                otherBody.applyImpulse(guideImpulse);

                // Dampen angular velocity too.
                otherBody.setAngularVelocity(otherBody.getAngularVelocity() * 0.95);
            };
        }

        function reset() {
            // Remove all bodies and constraints from world.
            world.clear();
            handConstraint = null;

            // Create border body.
            var thickness = 0.01; // 1 cm

            var border = phys2D.createRigidBody({
                type: 'static',
                shapes: [
                    phys2D.createPolygonShape({
                        vertices: phys2D.createRectangleVertices(0, 0, thickness, stageHeight)
                    }),
                    phys2D.createPolygonShape({
                        vertices: phys2D.createRectangleVertices((stageWidth - thickness), 0, stageWidth, stageHeight)
                    }),
                    phys2D.createPolygonShape({
                        vertices: phys2D.createRectangleVertices(stageWidth - 2, (stageHeight - thickness - 1), stageWidth, stageHeight)
                    }),
                    phys2D.createPolygonShape({
                        vertices: phys2D.createRectangleVertices(0, (stageHeight - thickness - 1), stageWidth - 8, stageHeight)
                    })
                ]
            });

            // Set up top bar of border with preSolve handler allowing one-way motion
            // from the top down.
            var topBar = phys2D.createPolygonShape({
                vertices: phys2D.createRectangleVertices(0, 1, stageWidth, thickness + 1)
            });
            border.addShape(topBar);

            // Set as a deterministic handler operating on all objects (undefined mask).
            topBar.addEventListener('preSolve', oneWayListener([0, 1]), null, true);

            // Set up sensor bar at bottom of border to teleport bodies.
            var sensorBar = phys2D.createPolygonShape({
                vertices: phys2D.createRectangleVertices(stageWidth - 8, (stageHeight - 0.5), stageWidth - 2, stageHeight),
                sensor: true
            });
            border.addShape(sensorBar);

            // Unspecified mask means operate on all objects.
            sensorBar.addEventListener('begin', teleportListener);
            world.addRigidBody(border);

            var spikes = function spikesFn(x, y, directionX, directionY, count, ?startIndex) {
                var spikeBody = phys2D.createRigidBody({
                    type: 'static'
                });

                // Create set of spikes.
                var spikeWidth = 0.5;
                var spikeHeight = 0.5;
                var i;
                if (startIndex == null) startIndex = 0;
                for (i in startIndex...(startIndex + count)) {
                    var posX = x - (directionY * spikeWidth * i);
                    var posY = y + (directionX * spikeWidth * i);
                    var spike = phys2D.createPolygonShape({
                        vertices: [[posX,
                                    posY],
                                   [posX - (spikeWidth * directionY / 2) + (spikeHeight * directionX),
                                    posY + (spikeWidth * directionX / 2) + (spikeHeight * directionY)],
                                   [posX - (spikeWidth * directionY),
                                    posY + (spikeWidth * directionX)]]
                    });

                    // Don't invoke listener on shapes we don't want to break.
                    // Set event listener for 'begin' and 'progress' so we can also
                    // cause boxes to break by pushing them into the spikes.
                    spike.addEventListener('begin', spikeListener, breakGroup);
                    spike.addEventListener('progress', spikeListener, breakGroup);

                    spikeBody.addShape(spike);
                }
                world.addRigidBody(spikeBody);
            };

            // Horizontal spikes (facing up [0, -1]) at bottom-left of border.
            spikes(2, stageHeight - 1, 0, -1, 8);

            // Vertical spikes (facing right [1, 0]) at mid-point of left of border.
            spikes(0, stageHeight / 4, 1, 0, 8, -4);

            // Light tunnel.
            var lightShape = phys2D.createPolygonShape({
                vertices: phys2D.createRectangleVertices(0, stageHeight / 4 - 1, stageWidth, stageHeight / 4 + 1),
                sensor: true
            });

            // light tunnel in left direction [-1, 0]
            var listener = lightTunnelListener([0, stageHeight/4], [-1, 0]);
            lightShape.addEventListener('begin', listener);
            lightShape.addEventListener('progress', listener);

            var lightBody = phys2D.createRigidBody({
                shapes: [lightShape],
                type: 'static'
            });
            world.addRigidBody(lightBody);

            // Middle platform with one-way tunnel
            var platform = phys2D.createRigidBody({
                type: 'static',
                shapes: [
                    phys2D.createPolygonShape({
                        vertices: [[9, 11], [11, 11], [11, 15]]
                    }),
                    phys2D.createPolygonShape({
                        vertices: [[17, 11], [19, 11], [17, 15]]
                    }),
                    // Arrow
                    phys2D.createPolygonShape({
                        vertices: [[14, 12.5], [14.4, 13], [13.6, 13]],
                        sensor: true
                    }),
                    phys2D.createPolygonShape({
                        vertices: [[14.1, 13], [14.1, 13.5], [13.9, 13.5], [13.9, 13]],
                        sensor: true
                    })
                ]
            });

            thickness = 0.1;
            topBar = phys2D.createPolygonShape({
                vertices: phys2D.createRectangleVertices(11, 11, 17, 11 + thickness)
            });
            platform.addShape(topBar);

            // Set as a deterministic handler operating on all objects (undefined mask).
            topBar.addEventListener('preSolve', oneWayListener([0, -1]), null, true);

            var bottomBar = phys2D.createPolygonShape({
                vertices: phys2D.createRectangleVertices(11, 15 - thickness, 17, 15)
            });
            platform.addShape(bottomBar);

            // Set as a deterministic handler operating on all objects (undefined mask).
            bottomBar.addEventListener('preSolve', oneWayListener([0, -1]), null, true);
            world.addRigidBody(platform);

            // Set up some initial objects.
            var generate = function generateFn(x:Float, y:Float, scale:Float, breakCount:Int) {
                var shape = boxShape.clone();
                shape.scale(scale);
                shape.userData = {
                    shapeSize: (shapeSize * scale),
                    breakCount: breakCount
                };
                var body = phys2D.createRigidBody({
                    shapes: [shape],
                    position: [x, y]
                });
                world.addRigidBody(body);
            };
            generate(15, 14, 1, 3);
            generate(13.5, 14.5, 0.5, 2);
            generate(12.75, 14.75, 0.25, 1);
            generate(4, 15, 1, 3);
            generate(4, 13, 1, 3);
            generate(4, 11, 1, 3);
            generate(stageWidth - 5, 15, 1, 3);
        }
        reset();

        //==================================================
        // Controls.
        //==================================================

        var mouseX = 0.0;
        var mouseY = 0.0;
        id.addEventListener('mouseover', function (x, y) {
            mouseX = x;
            mouseY = y;
        });
        id.addEventListener('keyup', function (keynum) {
            if (keynum == id.keyCodes.R) reset();
        });
        id.addEventListener('mousedown', function (code, x, y) {
            mouseX = x;
            mouseY = y;
            if(handConstraint != null) return;

            var point = draw2D.viewportMap(x, y);
            var body:RigidBody;
            if (code == id.mouseCodes.BUTTON_0) { // Left button
                if(handConstraint != null) {
                    world.removeConstraint(handConstraint);
                    handConstraint = null;
                }
                var bodies = [];
                var numBodies = world.bodyPointQuery(point, bodies);
                for (body in bodies) {
                    if(body.isDynamic()) {
                        handConstraint = phys2D.createPointConstraint({
                            bodyA: handReferenceBody,
                            bodyB: body,
                            anchorA: point,
                            anchorB: body.transformWorldPointToLocal(point),
                            stiff: false,
                            maxForce: 1e5
                        });
                        world.addConstraint(handConstraint);
                        break;
                    }
                }
            } else if (code == id.mouseCodes.BUTTON_1) { // Right button
                body = phys2D.createRigidBody({
                    shapes: [boxShape.clone()],
                    position: point,
                });
                world.addRigidBody(body);
            }
        });
        function onMouseLeaveUp() {
            if (handConstraint != null) {
                world.removeConstraint(handConstraint);
                handConstraint = null;
            }
        }
        id.addEventListener('mouseleave', onMouseLeaveUp);
        id.addEventListener('mouseup',    onMouseLeaveUp);

        //==================================================
        // Main loop.
        //==================================================

        // Simulate with fixed time steps, using multiple steps per
        // frame to keep up with real time.
        var realTime = 0.0;
        var prevTime = TurbulenzEngine.time;
        function mainLoop() {
            if (!gd.beginFrame()) return;
            id.update();
            gd.clear([0.3, 0.3, 0.3, 1.0]);

            if(handConstraint != null) {
                handConstraint.setAnchorA(draw2D.viewportMap(mouseX, mouseY));
                var body = handConstraint.bodyB;

                // Additional angular dampening of body being dragged.
                // Helps it to settle quicker instead of spinning around
                // the cursor.
                body.setAngularVelocity(body.getAngularVelocity() * 0.9);
            }

            var curTime = TurbulenzEngine.time;
            var timeDelta = (curTime - prevTime);
            // Prevent trying to simulate too much time at once!
            if (timeDelta > (1/20)) timeDelta = 1/20;
            realTime += timeDelta;
            prevTime = curTime;
            while (world.simulatedTime < realTime) world.step(1 / 60);

            debug.setScreenViewport(draw2D.getScreenSpaceViewport());
            debug.begin();
            debug.drawWorld(world);
            debug.end();

            gd.endFrame();
        }
        var intervalID = TurbulenzEngine.setInterval(mainLoop, (1000 / 60));
        TurbulenzEngine.onunload = function()
            TurbulenzEngine.clearInterval(intervalID);
    }}
}
