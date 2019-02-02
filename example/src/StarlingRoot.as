package {


import com.tuarua.DeviceInfo;
import com.tuarua.DeviceInfoAndroid;
import com.tuarua.DeviceInfoIos;
import com.tuarua.utils.os;

import flash.desktop.NativeApplication;
import flash.events.Event;

import starling.display.Sprite;
import starling.events.Touch;
import starling.events.TouchEvent;
import starling.events.TouchPhase;
import starling.text.TextField;
import starling.utils.Align;

import views.SimpleButton;

public class StarlingRoot extends Sprite {
    private var btnDeviceInfo:SimpleButton = new SimpleButton("Get Device Info");
    private var statusLabel:TextField;

    public function StarlingRoot() {
        TextField.registerCompositor(Fonts.getFont("fira-sans-semi-bold-13"), "Fira Sans Semi-Bold 13");
        NativeApplication.nativeApplication.addEventListener(Event.EXITING, onExiting);
    }

    public function start():void {
        initMenu();
    }

    private function initMenu():void {
        btnDeviceInfo.x = (stage.stageWidth - 200) * 0.5;
        btnDeviceInfo.y = 100;
        btnDeviceInfo.addEventListener(TouchEvent.TOUCH, onLevelClick);

        addChild(btnDeviceInfo);

        statusLabel = new TextField(stage.stageWidth, 800, "");
        statusLabel.format.setTo(Fonts.NAME, 13, 0x222222, Align.LEFT, Align.TOP);
        statusLabel.touchable = false;
        statusLabel.x = 50;
        statusLabel.y = btnDeviceInfo.y + 75;
        addChild(statusLabel);

    }

    private function onLevelClick(event:TouchEvent):void {
        var touch:Touch = event.getTouch(btnDeviceInfo);
        if (touch != null && touch.phase == TouchPhase.ENDED) {
            if (os.isIos) {
                var iosInfo:DeviceInfoIos = DeviceInfo.ios;
                statusLabel.text = JSON.stringify(iosInfo, null, 4);
            } else if (os.isAndroid) {
                var androidInfo:DeviceInfoAndroid = DeviceInfo.android;
                statusLabel.text = JSON.stringify(androidInfo, null, 4);
            }

        }
    }

    private function onExiting(event:Event):void {
        DeviceInfo.dispose();
    }

}
}