package com.module.billingclean;

import android.app.Activity;
import android.os.Bundle;
import com.android.billingclient.api.BillingClient;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Tham chiếu lớp BillingClient để đảm bảo mọi class trong thư viện
        // được biên dịch đầy đủ vào classes.dex của module.apk
        Class<?> billingClientClass = BillingClient.class;
        if (billingClientClass.getName().isEmpty()) {
            finish();
        }
    }
}
