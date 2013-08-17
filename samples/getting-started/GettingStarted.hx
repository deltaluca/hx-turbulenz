package;

import turbulenz.TurbulenzEngine;
import turbulenz.graphics.draw2d.Draw2D;
import turbulenz.graphics.draw2d.Draw2DSprite;

class GettingStarted {
    static function main() {
        var graphicsDevice = TurbulenzEngine.createGraphicsDevice({});
        var draw2D = Draw2D.create({graphicsDevice: graphicsDevice});

        var b = 0.0;
        var bgColor = [1.0, 1.0, b, 1.0];

        var x1 = 50.0;
        var y1 = 50.0;
        var x2 = graphicsDevice.width - 50;
        var y2 = graphicsDevice.height - 50;

        var rectangle = [x1, y1, x2, y2];
        var drawObject = {
            color: [1.0, 0.0, 0.0, 1.0],
            destinationRectangle: rectangle
        };

        var sprite = Draw2DSprite.create({
            width: 100,
            height: 100,
            x: graphicsDevice.width/2,
            y: graphicsDevice.height/2,
            color: [1.0, 1.0, 1.0, 1.0],
            rotation: Math.PI/4
        });

        var texture = graphicsDevice.createTexture({
            src: "assets/textures/particle_spark.png",
            mipmaps: true,
            onload: function (texture, ?_) {
                if (texture != null) {
                    sprite.setTexture(texture);
                    sprite.setTextureRectangle([0, 0, texture.width, texture.height]);
                }
            }
        });

        function update() {
            if (graphicsDevice.beginFrame()) {
                b += 0.01;
                bgColor[2] = b % 1.0;
                bgColor[2] = bgColor[bgColor.length - 2];
                graphicsDevice.clear(bgColor, 1.0);

                sprite.rotation += Math.PI/32;

                draw2D.begin();
                draw2D.draw(cast drawObject);
                draw2D.drawSprite(sprite);
                draw2D.end();

                graphicsDevice.endFrame();
            }
        }
        TurbulenzEngine.setInterval(update, 1000/60);
    }
}
