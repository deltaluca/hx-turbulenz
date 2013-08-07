package;

import turbulenz.TurbulenzEngine;
import turbulenz.Draw2D;

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

        function update() {
            if (graphicsDevice.beginFrame()) {
                b += 0.01;
                bgColor[2] = b % 1.0;
                graphicsDevice.clear(bgColor, 1.0);

                draw2D.begin();
                draw2D.draw(cast drawObject);
                draw2D.end();

                graphicsDevice.endFrame();
            }
        }
        TurbulenzEngine.setInterval(update, 1000/60);
    }
}
