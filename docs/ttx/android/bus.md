
## 第一个页面
### 注册订阅
Bus.register(EventType.CHECK, this)
### 解除订阅
Bus.unRegister(EventType.CHECK, this)

## 第二个页面
### 发起信号
Bus.notify(EventType.CHECK)

### 实例
```
class xxxx implements Observer

@Override
public void onEvent(int eventType) {
    if (EventType.QUICKCHECK_FINISH == eventType) {
        this.finish();
    }
}
// rf销毁页面使用
@Override
 protected void onDestroy() {
     Bus.unRegister(EventType.QUICKCHECK_FINISH, this);
     super.onDestroy();
 }

 @Override
public boolean intercept() {
    return isFinishing();
}

```


## 页面重新加载
@Override
protected void onResume() {
super.onResume();
}
