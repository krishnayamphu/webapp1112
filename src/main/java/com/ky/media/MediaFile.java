package com.ky.media;

import java.io.File;
import java.util.ArrayList;

public class MediaFile {
    public static ArrayList<String> allFiles(String path){
        ArrayList<String> allFiles=new ArrayList<>();
        File files=new File(path);
        File[] items=files.listFiles();
        for(File file:items){
            allFiles.add(file.getName());
        }
        return allFiles;
    }
    public static boolean remove(String path,String filename){
        boolean status=false;
        File file=new File(path+"/"+filename);
        if(file.exists()){
            status=file.delete();
        }
        return  status;
    }
}
