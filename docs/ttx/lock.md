
```java

class WmsRedissionLockService {

    static RLock getAndTryMultiLock(Collection<RLock> locks) {
        RLock lock = RedissonLockService.redisson.getMultiLock(locks as RLock[])
        boolean res = lock.tryLock(200, 60, TimeUnit.SECONDS)
        res ? lock : null
    }

    static void unlock(RLock lock) {
        try {
            lock.unlock()
        } catch (Throwable t) {
            System.out.println(t.message)
        }
    }
}
```