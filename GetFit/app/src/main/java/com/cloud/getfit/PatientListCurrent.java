package com.cloud.getfit;

import android.graphics.Bitmap;
import android.media.Image;

/**
 * Created by prash on 12/11/2017.
 */
public class PatientListCurrent {
    protected Bitmap profilePic;
    protected String pName;
    protected String pWeeks;

    public PatientListCurrent(Bitmap image,String name,String pweeks){
        this.profilePic= image;
        this.pName=name;
        this.pWeeks=pweeks;
    }

    public Bitmap getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(Bitmap profilePic) {
        this.profilePic = profilePic;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpWeeks() {
        return pWeeks;
    }

    public void setpWeeks(String pWeeks) {
        this.pWeeks = pWeeks;
    }
}
