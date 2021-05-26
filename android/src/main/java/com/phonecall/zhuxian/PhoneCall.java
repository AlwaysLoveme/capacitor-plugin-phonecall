package com.phonecall.zhuxian;

import android.content.Context;

public class PhoneCall {
    private Context context;

    public PhoneCall(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }

    public String start(String phone) {
        return phone;
    }

}
