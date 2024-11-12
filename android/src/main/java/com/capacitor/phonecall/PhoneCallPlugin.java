package com.capacitor.phonecall;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.util.Objects;

@CapacitorPlugin(name = "PhoneCall")
public class PhoneCallPlugin extends Plugin {


    @PluginMethod
    public void call(PluginCall call) {
        String value = call.getString("phone", "");
        assert value != null;
        Log.i("TEL", value);

        if(Objects.equals(value, "")) {
            call.reject("phone number is required");
            return;
        }
        Uri uri = Uri.parse("tel:" + value);
        Intent intent = new Intent(Intent.ACTION_DIAL);
        intent.setData(uri);
        getActivity().startActivity(intent);

        call.resolve();
    }
}
