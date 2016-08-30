package ${packageName}.fragment;

import android.os.Bundle;
import android.content.Context;
import android${SupportPackage}.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.fragment.presentation.presenter.${presenterName};
import ${packageName}.fragment.presentation.view.${viewName};

public class ${className} extends BaseFragment<${presenterName}> implements ${viewName}{
    public ${className}() {
        // Required empty public constructor
    }

    @Override
    protected ${presenterName} createPresenter() {
        return new ${presenterName}(this);
    }

    @Override
    protected int getLayoutId() {
        <#if includeLayout>
        return R.layout.${fragmentName};
	<#else>
	return 0;
	</#if>
    }

    @Override
    public void onPause(){
	super.onPause();
    }

    @Override
    public void onResume(){
	super.onResume();
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

}
