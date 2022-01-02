
```
implementation 'com.necer.ndialog2:ndialog:1.0.2'

if (null != entity.getData() && null != entity.getData().getTransContCodes()){
    new NDialog(LoadByLpnActivity.this)
            .setTitle("被拦截周转箱号：")
            .setTitleColor(Color.parseColor("#000099"))
            .setTitleSize(24)
            .setTitleCenter(false)
            .setMessageCenter(false)
            .setMessage(entity.getData().getTransContCodes())
            .setMessageSize(28)
            .setMessageColor(Color.parseColor("#FF0000"))
            .setButtonCenter(false)
            .setButtonSize(22)
            .setCancleable(false)
            .setNegativeButtonText(null)
            .setOnConfirmListener(new NDialog.OnConfirmListener() {
                @Override
                public void onClick(int which) {
                    //which,0代表NegativeButton，1代表PositiveButton
                    progress.dismiss();

                }
            }).create(NDialog.CONFIRM).show();
} else {
    ToastHelper.showToast(entity.getMsg());
}
```