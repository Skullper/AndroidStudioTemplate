package ${packageName}.base_arch.fragment;

import android.os.Bundle;
import android.content.Context;

import android.support.annotation.CallSuper;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;

import android${SupportPackage}.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Gravity;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.app.ProgressDialog;

import android.view.inputmethod.InputMethodManager;

import ${packageName}.base_arch.presentation.presenter.BasePresenter;
import ${packageName}.base_arch.presentation.view.BaseView;

public abstract class ${className}<T extends ${presenterName}> extends Fragment implements ${viewName} {

    protected T presenter;
    protected View root;

    private ProgressDialog progressDialog;
	private RelativeLayout progressBarLayout;

    protected abstract T createPresenter();

    protected abstract int getLayoutId();

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        root = inflater.inflate(getLayoutId(), container, false);
        presenter = createPresenter();
        findViews(root);
        setupActionBar(getSupportActionBar());
        presenter.init();
        return root;
    }

    protected void findViews(View rootView) {
    }

    protected void setupActionBar(ActionBar actionBar) {
        if (actionBar == null)
            return;
    }

    protected ActionBar getSupportActionBar() {
        return ((AppCompatActivity) getActivity()).getSupportActionBar();
    }

	@Override
    public BaseActivity getActContext() {
        return (BaseActivity) getActivity();
    }

    @Override
    public void showNotificationDialog(String title, String message) {
        NotificationDialog dialog = new NotificationDialog(getActContext());
        dialog.setTitle(title);
        dialog.setMessage(message);
        dialog.notifyUser();
    }

    @Override
    public void showProgressDialog() {
        if (progressDialog == null) {
            progressDialog = new ProgressDialog(getActivity());
            progressDialog.setCancelable(false);
            progressDialog.show();
        }
    }

    @Override
    public void hideProgressDialog() {
        if (progressDialog != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
            progressDialog = null;
        }
    }

	@Override
    public void showProgressView() {
        if (progressBarLayout == null)
            setupProgressWheel();
        else
            progressBarLayout.setVisibility(View.VISIBLE);
    }

    @Override
    public void hideProgressView() {
        if (progressBarLayout != null)
            progressBarLayout.setVisibility(View.GONE);
    }

    protected void closeKeyboard() {
        if (getView() == null)
            return;
        View view = getView().findFocus();
        if (view != null) {
            InputMethodManager imm = (InputMethodManager) getActivity().getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

	public void replaceFragment(@IdRes int containerId, BaseFragment fragment, @Nullable String tag) {
        getActContext().replaceFragment(containerId, fragment, tag);
    }

    public void replaceFragmentWithBackStack(@IdRes int containerId, BaseFragment fragment, @Nullable String tag) {
        getActContext().replaceFragmentWithBackStack(containerId, fragment, tag);
    }


	@SuppressWarnings("ConstantConditions")
	private void setupProgressWheel() {
        ViewGroup layout = (ViewGroup) getView();
        ProgressBar progressBar = new ProgressBar(getActContext(), null, android.R.attr.progressBarStyle);
        progressBar.setIndeterminate(true);
        RelativeLayout.LayoutParams params = new
                RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT,
                RelativeLayout.LayoutParams.MATCH_PARENT);
        progressBarLayout = new RelativeLayout(getActContext());
        progressBarLayout.setGravity(Gravity.CENTER);
        progressBarLayout.addView(progressBar);
        layout.addView(progressBarLayout, params);
    }

}
