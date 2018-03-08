package com.cloud.getfit;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.List;

/**
 * Created by prash on 12/11/2017.
 */

public class CurrentPatientAdapter extends RecyclerView.Adapter<CurrentPatientAdapter.MyViewHolder> {

    private List<PatientListCurrent> list;

    public CurrentPatientAdapter(List<PatientListCurrent> list){
        this.list=list;
    }
    @Override
    public CurrentPatientAdapter.MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.patient_list_card_nutrition_db,parent,false);
        return new MyViewHolder(v);
    }

    @Override
    public void onBindViewHolder(CurrentPatientAdapter.MyViewHolder holder, int position) {
        PatientListCurrent pL = list.get(position);
        holder.imageView.setImageBitmap(pL.getProfilePic());
        holder.nameTV.setText(pL.pName);
        holder.weekTV.setText(pL.pWeeks);
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public TextView nameTV;
        public TextView weekTV;
        public de.hdodenhof.circleimageview.CircleImageView imageView;
        public MyViewHolder(View itemView) {
            super(itemView);
            imageView = (de.hdodenhof.circleimageview.CircleImageView)itemView.findViewById(R.id.patient_image_card);
            nameTV = (TextView) itemView.findViewById(R.id.patient_name_card);
            weekTV = (TextView) itemView.findViewById(R.id.patient_weeks_card);
        }
    }
}
