package ${packageName}.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v7.app.AlertDialog;

public class NotificationDialog extends AlertDialog {

    private AlertDialog.Builder builder;

    public NotificationDialog(Context context) {
        super(context);
        initDialog(context);
    }

    protected NotificationDialog(Context context, int theme) {
        super(context, theme);
        initDialog(context);
    }

    protected NotificationDialog(Context context, boolean cancelable, OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        initDialog(context);
    }

    private void initDialog(Context context) {
        builder = new AlertDialog.Builder(context);
        builder.setPositiveButton(android.R.string.yes, new OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
    }

    public void setTitle(String title) {
        builder.setTitle(title);
    }

    public void setMessage(String message) {
        builder.setMessage(message);
    }

    public void notifyUser() {
        builder.create();
        builder.show();
    }
}
