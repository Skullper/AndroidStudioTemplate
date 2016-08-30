package ${packageName}.utils;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import ${packageName}.${classApplication};

public class SPrefs {

    private static SPrefs instance;
    private SharedPreferences preferences;

    public static SPrefs getInstance() {
        if (instance == null)
            instance = new SPrefs();
        return instance;
    }

    public SPrefs() {
        preferences = PreferenceManager.getDefaultSharedPreferences(${classApplication}.getContext());
    }

    public void clearAllPreferences() {
        preferences.edit().clear().apply();
    }
}
