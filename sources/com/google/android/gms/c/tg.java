package com.google.android.gms.c;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

@pa
public class tg {

    public interface a<D, R> {
        R a(D d);
    }

    public static <A, B> th<B> a(final th<A> thVar, final a<A, B> aVar) {
        final te teVar = new te();
        thVar.a(new Runnable() {
            public void run() {
                try {
                    teVar.b(aVar.a(thVar.get()));
                } catch (InterruptedException | CancellationException | ExecutionException e) {
                    teVar.cancel(true);
                }
            }
        });
        return teVar;
    }

    public static <V> th<List<V>> a(final List<th<V>> list) {
        final te teVar = new te();
        final int size = list.size();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (th a : list) {
            a.a(new Runnable() {
                public void run() {
                    if (atomicInteger.incrementAndGet() >= size) {
                        try {
                            teVar.b(tg.c(list));
                        } catch (InterruptedException | ExecutionException e) {
                            sz.c("Unable to convert list of futures to a future of list", e);
                        }
                    }
                }
            });
        }
        return teVar;
    }

    private static <V> List<V> c(List<th<V>> list) {
        ArrayList arrayList = new ArrayList();
        for (th thVar : list) {
            Object obj = thVar.get();
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
