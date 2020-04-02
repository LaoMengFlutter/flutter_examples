package com.flutter.appandroid;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.embedding.android.FlutterFragment;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterView;


public class ChannelActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MethodChannel methodChannel = new MethodChannel(getFlutterView(), "channel_name");
        //与Flutter通信
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                if (call.method.equals("method_name")) {
                    if (call.hasArgument("name")) {
                        String name = call.argument("name");
                    }
                    result.success(call.method);
                    result.error("error_code","error_msg","错误详细信息");
                    result.notImplemented();
                }
            }
        });

    }
}
