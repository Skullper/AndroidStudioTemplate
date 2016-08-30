package ${packageName}.base_arch.presentation.view;

public interface ${viewName} {

    void showProgressDialog();

    void hideProgressDialog();

	void showProgressView();
	
	void hideProgressView();

	BaseActivity getActContext();

    void showNotificationDialog(String title, String message);

	/**
	 * !ADD THIS TO YOUR TOP- 
	 * classpath 'com.neenbedankt.gradle.plugins:android-apt:${butterKnifeClassPathVer}'	 
	 * AND MODULE-LEVEL GRADLE FILES
	 * apply plugin: 'com.neenbedankt.android-apt'
	 * apt 'com.jakewharton:butterknife-compiler:${butterKnifeAptVer}'
	 * AND DELETE THIS!
	 */

}
