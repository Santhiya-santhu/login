//activity.java
package com.example.login;
import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
private EditText name;
private EditText password;
private Button login;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        name=(EditText)findViewById(R.id.etn);
        password=(EditText)findViewById(R.id.etp);
        login=(Button)findViewById(R.id.button);
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (name.getText().toString().length()==0){
                    name.setError("Name is Required!");}
                else if (password.getText().toString().length()==0){
                    password.setError("Password id Required!");
                }
                else if (password.getText().length()<=5){
                    password.setError("Password should have atleast 6 characters!");
                }
                else {
                    Intent myIntent=new Intent(MainActivity.this, Activity2.class);
                    startActivity(myIntent);
                }
            }
        });
    }
}
