package com.cloud.getfit;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

//import com.amazonaws.mobile.client.AWSMobileClient;

public class SignUpActivity extends AppCompatActivity {

    Button mSubmitButton;
    Button mCleanButton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
  //      AWSMobileClient.getInstance().initialize(this).execute();
        setContentView(R.layout.activity_sign_up);
        mSubmitButton = (Button)findViewById(R.id.sign_up_submit);
        mCleanButton=(Button) findViewById(R.id.sign_up_clear);
        mCleanButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Toast.makeText(v.getContext(),"I am here",Toast.LENGTH_LONG);
                Intent intent = new Intent(v.getContext(),Profile.class);
                startActivity(intent);
            }
        });
        mSubmitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(v.getContext(),UserActivityDashBoard.class));
            }
        });
    }
}
