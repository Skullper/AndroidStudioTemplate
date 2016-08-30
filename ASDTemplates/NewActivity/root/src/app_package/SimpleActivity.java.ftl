package ${packageName};

import ${packageName}.presentation.view.${viewName};
import ${packageName}.presentation.presenter.${presenterName};
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

public class ${activityClass} extends BaseActivity<${presenterName}> implements ${viewName}{

	@Override
	protected ${presenterName} createPresenter(){
		return new ${presenterName}(this);
	}

	@Override
	protected int getLayoutId(){
		return R.layout.${layoutName};
	}

	@Override
	protected void findViews(){
		super.findViews();
	}

	@Override
	protected void onStart(){
		super.onStart();
	}

	@Override
	protected void onResume(){
		super.onResume();
	}

	@Override
	protected void onPause(){
		super.onPause();
	}

	@Override
	protected void onStop(){
		super.onStop();
	}

}
