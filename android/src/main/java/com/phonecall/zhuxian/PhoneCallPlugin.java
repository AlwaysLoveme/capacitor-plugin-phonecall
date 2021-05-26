package com.phonecall.zhuxian;

import android.content.Intent;
import android.net.Uri;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import android.util.Log;

@CapacitorPlugin(name = "PhoneCall")
public class PhoneCallPlugin extends Plugin {
    private PhoneCall implementation;

    @Override
    public void load() {
        implementation = new PhoneCall(getContext());
    }

    @PluginMethod
    public void start(PluginCall call) {
        String value = call.getString("phone");

        Uri uri = Uri.parse("tel:" + value);
        Intent intent = new Intent(Intent.ACTION_DIAL);
        intent.setData(uri);
        getActivity().startActivity(intent);

        call.resolve();
    }
}
