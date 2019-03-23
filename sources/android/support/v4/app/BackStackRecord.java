package android.support.v4.app;

import android.os.Build.VERSION;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentTransitionCompat21.EpicenterView;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

final class BackStackRecord extends FragmentTransaction implements BackStackEntry, Runnable {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final boolean SUPPORTS_TRANSITIONS = (VERSION.SDK_INT >= 21);
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack = true;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex = -1;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    Op mTail;
    int mTransition;
    int mTransitionStyle;

    static final class Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList<Fragment> removed;

        Op() {
        }
    }

    public class TransitionState {
        public EpicenterView enteringEpicenterView = new EpicenterView();
        public ArrayList<View> hiddenFragmentViews = new ArrayList();
        public ArrayMap<String, String> nameOverrides = new ArrayMap();
        public View nonExistentView;
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mManager = fragmentManagerImpl;
    }

    private TransitionState beginTransition(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, boolean z) {
        int i;
        int i2 = 0;
        TransitionState transitionState = new TransitionState();
        transitionState.nonExistentView = new View(this.mManager.mHost.getContext());
        int i3 = 0;
        int i4 = 0;
        while (i3 < sparseArray.size()) {
            i = configureTransitions(sparseArray.keyAt(i3), transitionState, z, sparseArray, sparseArray2) ? 1 : i4;
            i3++;
            i4 = i;
        }
        while (i2 < sparseArray2.size()) {
            i = sparseArray2.keyAt(i2);
            if (sparseArray.get(i) == null && configureTransitions(i, transitionState, z, sparseArray, sparseArray2)) {
                i4 = 1;
            }
            i2++;
        }
        return i4 == 0 ? null : transitionState;
    }

    private void calculateFragments(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.mManager.mContainer.onHasView()) {
            for (Op op = this.mHead; op != null; op = op.next) {
                switch (op.cmd) {
                    case 1:
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 2:
                        Fragment fragment = op.fragment;
                        if (this.mManager.mAdded != null) {
                            int i = 0;
                            Fragment fragment2 = fragment;
                            while (true) {
                                int i2 = i;
                                if (i2 < this.mManager.mAdded.size()) {
                                    Fragment fragment3 = (Fragment) this.mManager.mAdded.get(i2);
                                    if (fragment2 == null || fragment3.mContainerId == fragment2.mContainerId) {
                                        if (fragment3 == fragment2) {
                                            fragment2 = null;
                                            sparseArray2.remove(fragment3.mContainerId);
                                        } else {
                                            setFirstOut(sparseArray, sparseArray2, fragment3);
                                        }
                                    }
                                    i = i2 + 1;
                                }
                            }
                        }
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 3:
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 4:
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 5:
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 6:
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 7:
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    default:
                        break;
                }
            }
        }
    }

    private void callSharedElementEnd(TransitionState transitionState, Fragment fragment, Fragment fragment2, boolean z, ArrayMap<String, View> arrayMap) {
        SharedElementCallback sharedElementCallback = z ? fragment2.mEnterTransitionCallback : fragment.mEnterTransitionCallback;
        if (sharedElementCallback != null) {
            sharedElementCallback.onSharedElementEnd(new ArrayList(arrayMap.keySet()), new ArrayList(arrayMap.values()), null);
        }
    }

    private static Object captureExitingViews(Object obj, Fragment fragment, ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, View view) {
        return obj != null ? FragmentTransitionCompat21.captureExitingViews(obj, fragment.getView(), arrayList, arrayMap, view) : obj;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x014b  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0143  */
    private boolean configureTransitions(int r36, android.support.v4.app.BackStackRecord.TransitionState r37, boolean r38, android.util.SparseArray<android.support.v4.app.Fragment> r39, android.util.SparseArray<android.support.v4.app.Fragment> r40) {
        /*
        r35 = this;
        r0 = r35;
        r4 = r0.mManager;
        r4 = r4.mContainer;
        r0 = r36;
        r6 = r4.onFindViewById(r0);
        r6 = (android.view.ViewGroup) r6;
        if (r6 != 0) goto L_0x0012;
    L_0x0010:
        r4 = 0;
    L_0x0011:
        return r4;
    L_0x0012:
        r0 = r40;
        r1 = r36;
        r8 = r0.get(r1);
        r8 = (android.support.v4.app.Fragment) r8;
        r0 = r39;
        r1 = r36;
        r9 = r0.get(r1);
        r9 = (android.support.v4.app.Fragment) r9;
        r0 = r38;
        r12 = getEnterTransition(r8, r0);
        r0 = r38;
        r7 = getSharedElementTransition(r8, r9, r0);
        r0 = r38;
        r13 = getExitTransition(r9, r0);
        r22 = 0;
        r11 = new java.util.ArrayList;
        r11.<init>();
        if (r7 == 0) goto L_0x0083;
    L_0x0041:
        r0 = r35;
        r1 = r37;
        r2 = r38;
        r22 = r0.remapSharedElements(r1, r9, r2);
        r4 = r22.isEmpty();
        if (r4 == 0) goto L_0x005e;
    L_0x0051:
        r7 = 0;
        r22 = 0;
        r30 = r7;
    L_0x0056:
        if (r12 != 0) goto L_0x0089;
    L_0x0058:
        if (r30 != 0) goto L_0x0089;
    L_0x005a:
        if (r13 != 0) goto L_0x0089;
    L_0x005c:
        r4 = 0;
        goto L_0x0011;
    L_0x005e:
        if (r38 == 0) goto L_0x0086;
    L_0x0060:
        r4 = r9.mEnterTransitionCallback;
    L_0x0062:
        if (r4 == 0) goto L_0x007a;
    L_0x0064:
        r5 = new java.util.ArrayList;
        r10 = r22.keySet();
        r5.<init>(r10);
        r10 = new java.util.ArrayList;
        r14 = r22.values();
        r10.<init>(r14);
        r14 = 0;
        r4.onSharedElementStart(r5, r10, r14);
    L_0x007a:
        r4 = r35;
        r5 = r37;
        r10 = r38;
        r4.prepareSharedElementTransition(r5, r6, r7, r8, r9, r10, r11, r12, r13);
    L_0x0083:
        r30 = r7;
        goto L_0x0056;
    L_0x0086:
        r4 = r8.mEnterTransitionCallback;
        goto L_0x0062;
    L_0x0089:
        r21 = new java.util.ArrayList;
        r21.<init>();
        r0 = r37;
        r4 = r0.nonExistentView;
        r0 = r21;
        r1 = r22;
        r14 = captureExitingViews(r13, r9, r0, r1, r4);
        r0 = r35;
        r4 = r0.mSharedElementTargetNames;
        if (r4 == 0) goto L_0x00c1;
    L_0x00a0:
        if (r22 == 0) goto L_0x00c1;
    L_0x00a2:
        r0 = r35;
        r4 = r0.mSharedElementTargetNames;
        r5 = 0;
        r4 = r4.get(r5);
        r0 = r22;
        r4 = r0.get(r4);
        r4 = (android.view.View) r4;
        if (r4 == 0) goto L_0x00c1;
    L_0x00b5:
        if (r14 == 0) goto L_0x00ba;
    L_0x00b7:
        android.support.v4.app.FragmentTransitionCompat21.setEpicenter(r14, r4);
    L_0x00ba:
        if (r30 == 0) goto L_0x00c1;
    L_0x00bc:
        r0 = r30;
        android.support.v4.app.FragmentTransitionCompat21.setEpicenter(r0, r4);
    L_0x00c1:
        r16 = new android.support.v4.app.BackStackRecord$1;
        r0 = r16;
        r1 = r35;
        r0.<init>(r8);
        r20 = new java.util.ArrayList;
        r20.<init>();
        r23 = new android.support.v4.util.ArrayMap;
        r23.<init>();
        r4 = 1;
        if (r8 == 0) goto L_0x00dd;
    L_0x00d7:
        if (r38 == 0) goto L_0x0146;
    L_0x00d9:
        r4 = r8.getAllowReturnTransitionOverlap();
    L_0x00dd:
        r0 = r30;
        r32 = android.support.v4.app.FragmentTransitionCompat21.mergeTransitions(r12, r14, r0, r4);
        if (r32 == 0) goto L_0x0141;
    L_0x00e5:
        r0 = r37;
        r0 = r0.nonExistentView;
        r17 = r0;
        r0 = r37;
        r0 = r0.enteringEpicenterView;
        r18 = r0;
        r0 = r37;
        r0 = r0.nameOverrides;
        r19 = r0;
        r13 = r30;
        r15 = r6;
        r24 = r11;
        android.support.v4.app.FragmentTransitionCompat21.addTransitionTargets(r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24);
        r0 = r35;
        r1 = r37;
        r2 = r36;
        r3 = r32;
        r0.excludeHiddenFragmentsAfterEnter(r6, r1, r2, r3);
        r0 = r37;
        r4 = r0.nonExistentView;
        r5 = 1;
        r0 = r32;
        android.support.v4.app.FragmentTransitionCompat21.excludeTarget(r0, r4, r5);
        r0 = r35;
        r1 = r37;
        r2 = r36;
        r3 = r32;
        r0.excludeHiddenFragments(r1, r2, r3);
        r0 = r32;
        android.support.v4.app.FragmentTransitionCompat21.beginDelayedTransition(r6, r0);
        r0 = r37;
        r0 = r0.nonExistentView;
        r25 = r0;
        r0 = r37;
        r0 = r0.hiddenFragmentViews;
        r33 = r0;
        r24 = r6;
        r26 = r12;
        r27 = r20;
        r28 = r14;
        r29 = r21;
        r31 = r11;
        r34 = r23;
        android.support.v4.app.FragmentTransitionCompat21.cleanupTransitions(r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34);
    L_0x0141:
        if (r32 == 0) goto L_0x014b;
    L_0x0143:
        r4 = 1;
        goto L_0x0011;
    L_0x0146:
        r4 = r8.getAllowEnterTransitionOverlap();
        goto L_0x00dd;
    L_0x014b:
        r4 = 0;
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.BackStackRecord.configureTransitions(int, android.support.v4.app.BackStackRecord$TransitionState, boolean, android.util.SparseArray, android.util.SparseArray):boolean");
    }

    private void doAddOp(int i, Fragment fragment, String str, int i2) {
        Class cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from" + " instance state.");
        }
        fragment.mFragmentManager = this.mManager;
        if (str != null) {
            if (fragment.mTag == null || str.equals(fragment.mTag)) {
                fragment.mTag = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            } else if (fragment.mFragmentId == 0 || fragment.mFragmentId == i) {
                fragment.mFragmentId = i;
                fragment.mContainerId = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
        }
        Op op = new Op();
        op.cmd = i2;
        op.fragment = fragment;
        addOp(op);
    }

    private void excludeHiddenFragments(TransitionState transitionState, int i, Object obj) {
        if (this.mManager.mAdded != null) {
            for (int i2 = 0; i2 < this.mManager.mAdded.size(); i2++) {
                Fragment fragment = (Fragment) this.mManager.mAdded.get(i2);
                if (!(fragment.mView == null || fragment.mContainer == null || fragment.mContainerId != i)) {
                    if (!fragment.mHidden) {
                        FragmentTransitionCompat21.excludeTarget(obj, fragment.mView, false);
                        transitionState.hiddenFragmentViews.remove(fragment.mView);
                    } else if (!transitionState.hiddenFragmentViews.contains(fragment.mView)) {
                        FragmentTransitionCompat21.excludeTarget(obj, fragment.mView, true);
                        transitionState.hiddenFragmentViews.add(fragment.mView);
                    }
                }
            }
        }
    }

    private void excludeHiddenFragmentsAfterEnter(View view, TransitionState transitionState, int i, Object obj) {
        final View view2 = view;
        final TransitionState transitionState2 = transitionState;
        final int i2 = i;
        final Object obj2 = obj;
        view.getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                view2.getViewTreeObserver().removeOnPreDrawListener(this);
                BackStackRecord.this.excludeHiddenFragments(transitionState2, i2, obj2);
                return true;
            }
        });
    }

    private static Object getEnterTransition(Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.cloneTransition(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object getExitTransition(Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.cloneTransition(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    private static Object getSharedElementTransition(Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return FragmentTransitionCompat21.wrapSharedElementTransition(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition());
    }

    private ArrayMap<String, View> mapEnteringSharedElements(TransitionState transitionState, Fragment fragment, boolean z) {
        ArrayMap arrayMap = new ArrayMap();
        View view = fragment.getView();
        if (view == null || this.mSharedElementSourceNames == null) {
            return arrayMap;
        }
        FragmentTransitionCompat21.findNamedViews(arrayMap, view);
        if (z) {
            return remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
        }
        arrayMap.retainAll(this.mSharedElementTargetNames);
        return arrayMap;
    }

    private ArrayMap<String, View> mapSharedElementsIn(TransitionState transitionState, boolean z, Fragment fragment) {
        ArrayMap mapEnteringSharedElements = mapEnteringSharedElements(transitionState, fragment, z);
        if (z) {
            if (fragment.mExitTransitionCallback != null) {
                fragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, mapEnteringSharedElements);
            }
            setBackNameOverrides(transitionState, mapEnteringSharedElements, true);
        } else {
            if (fragment.mEnterTransitionCallback != null) {
                fragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, mapEnteringSharedElements);
            }
            setNameOverrides(transitionState, mapEnteringSharedElements, true);
        }
        return mapEnteringSharedElements;
    }

    private void prepareSharedElementTransition(TransitionState transitionState, View view, Object obj, Fragment fragment, Fragment fragment2, boolean z, ArrayList<View> arrayList, Object obj2, Object obj3) {
        if (obj != null) {
            final View view2 = view;
            final Object obj4 = obj;
            final ArrayList<View> arrayList2 = arrayList;
            final TransitionState transitionState2 = transitionState;
            final Object obj5 = obj2;
            final Object obj6 = obj3;
            final boolean z2 = z;
            final Fragment fragment3 = fragment;
            final Fragment fragment4 = fragment2;
            view.getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
                public boolean onPreDraw() {
                    view2.getViewTreeObserver().removeOnPreDrawListener(this);
                    FragmentTransitionCompat21.removeTargets(obj4, arrayList2);
                    arrayList2.remove(transitionState2.nonExistentView);
                    FragmentTransitionCompat21.excludeSharedElementViews(obj5, obj6, obj4, arrayList2, false);
                    arrayList2.clear();
                    ArrayMap access$000 = BackStackRecord.this.mapSharedElementsIn(transitionState2, z2, fragment3);
                    FragmentTransitionCompat21.setSharedElementTargets(obj4, transitionState2.nonExistentView, access$000, arrayList2);
                    BackStackRecord.this.setEpicenterIn(access$000, transitionState2);
                    BackStackRecord.this.callSharedElementEnd(transitionState2, fragment3, fragment4, z2, access$000);
                    FragmentTransitionCompat21.excludeSharedElementViews(obj5, obj6, obj4, arrayList2, true);
                    return true;
                }
            });
        }
    }

    private static ArrayMap<String, View> remapNames(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayMap<String, View> arrayMap) {
        if (arrayMap.isEmpty()) {
            return arrayMap;
        }
        ArrayMap<String, View> arrayMap2 = new ArrayMap();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayMap.get(arrayList.get(i));
            if (view != null) {
                arrayMap2.put(arrayList2.get(i), view);
            }
        }
        return arrayMap2;
    }

    private ArrayMap<String, View> remapSharedElements(TransitionState transitionState, Fragment fragment, boolean z) {
        ArrayMap arrayMap = new ArrayMap();
        if (this.mSharedElementSourceNames != null) {
            FragmentTransitionCompat21.findNamedViews(arrayMap, fragment.getView());
            if (z) {
                arrayMap.retainAll(this.mSharedElementTargetNames);
            } else {
                arrayMap = remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
            }
        }
        if (z) {
            if (fragment.mEnterTransitionCallback != null) {
                fragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            setBackNameOverrides(transitionState, arrayMap, false);
        } else {
            if (fragment.mExitTransitionCallback != null) {
                fragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            setNameOverrides(transitionState, arrayMap, false);
        }
        return arrayMap;
    }

    private void setBackNameOverrides(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean z) {
        int size = this.mSharedElementTargetNames == null ? 0 : this.mSharedElementTargetNames.size();
        for (int i = 0; i < size; i++) {
            String str = (String) this.mSharedElementSourceNames.get(i);
            View view = (View) arrayMap.get((String) this.mSharedElementTargetNames.get(i));
            if (view != null) {
                String transitionName = FragmentTransitionCompat21.getTransitionName(view);
                if (z) {
                    setNameOverride(transitionState.nameOverrides, str, transitionName);
                } else {
                    setNameOverride(transitionState.nameOverrides, transitionName, str);
                }
            }
        }
    }

    private void setEpicenterIn(ArrayMap<String, View> arrayMap, TransitionState transitionState) {
        if (this.mSharedElementTargetNames != null && !arrayMap.isEmpty()) {
            View view = (View) arrayMap.get(this.mSharedElementTargetNames.get(0));
            if (view != null) {
                transitionState.enteringEpicenterView.epicenter = view;
            }
        }
    }

    private static void setFirstOut(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, Fragment fragment) {
        if (fragment != null) {
            int i = fragment.mContainerId;
            if (i != 0 && !fragment.isHidden()) {
                if (fragment.isAdded() && fragment.getView() != null && sparseArray.get(i) == null) {
                    sparseArray.put(i, fragment);
                }
                if (sparseArray2.get(i) == fragment) {
                    sparseArray2.remove(i);
                }
            }
        }
    }

    private void setLastIn(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, Fragment fragment) {
        if (fragment != null) {
            int i = fragment.mContainerId;
            if (i != 0) {
                if (!fragment.isAdded()) {
                    sparseArray2.put(i, fragment);
                }
                if (sparseArray.get(i) == fragment) {
                    sparseArray.remove(i);
                }
            }
            if (fragment.mState < 1 && this.mManager.mCurState >= 1) {
                this.mManager.makeActive(fragment);
                this.mManager.moveToState(fragment, 1, 0, 0, false);
            }
        }
    }

    private static void setNameOverride(ArrayMap<String, String> arrayMap, String str, String str2) {
        if (str != null && str2 != null) {
            for (int i = 0; i < arrayMap.size(); i++) {
                if (str.equals(arrayMap.valueAt(i))) {
                    arrayMap.setValueAt(i, str2);
                    return;
                }
            }
            arrayMap.put(str, str2);
        }
    }

    private void setNameOverrides(TransitionState transitionState, ArrayMap<String, View> arrayMap, boolean z) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            String str = (String) arrayMap.keyAt(i);
            String transitionName = FragmentTransitionCompat21.getTransitionName((View) arrayMap.valueAt(i));
            if (z) {
                setNameOverride(transitionState.nameOverrides, str, transitionName);
            } else {
                setNameOverride(transitionState.nameOverrides, transitionName, str);
            }
        }
    }

    private static void setNameOverrides(TransitionState transitionState, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    setNameOverride(transitionState.nameOverrides, (String) arrayList.get(i2), (String) arrayList2.get(i2));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public FragmentTransaction add(int i, Fragment fragment) {
        doAddOp(i, fragment, null, 1);
        return this;
    }

    public FragmentTransaction add(int i, Fragment fragment, String str) {
        doAddOp(i, fragment, str, 1);
        return this;
    }

    public FragmentTransaction add(Fragment fragment, String str) {
        doAddOp(0, fragment, str, 1);
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        this.mNumOp++;
    }

    public FragmentTransaction addSharedElement(View view, String str) {
        if (SUPPORTS_TRANSITIONS) {
            String transitionName = FragmentTransitionCompat21.getTransitionName(view);
            if (transitionName == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList();
                this.mSharedElementTargetNames = new ArrayList();
            }
            this.mSharedElementSourceNames.add(transitionName);
            this.mSharedElementTargetNames.add(str);
        }
        return this;
    }

    public FragmentTransaction addToBackStack(String str) {
        if (this.mAllowAddToBackStack) {
            this.mAddToBackStack = true;
            this.mName = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    public FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v(TAG, "Bump nesting in " + this + " by " + i);
            }
            for (Op op = this.mHead; op != null; op = op.next) {
                Fragment fragment;
                if (op.fragment != null) {
                    fragment = op.fragment;
                    fragment.mBackStackNesting += i;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v(TAG, "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
                if (op.removed != null) {
                    for (int size = op.removed.size() - 1; size >= 0; size--) {
                        fragment = (Fragment) op.removed.get(size);
                        fragment.mBackStackNesting += i;
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v(TAG, "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }

    public void calculateBackFragments(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.mManager.mContainer.onHasView()) {
            for (Op op = this.mTail; op != null; op = op.prev) {
                switch (op.cmd) {
                    case 1:
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 2:
                        if (op.removed != null) {
                            for (int size = op.removed.size() - 1; size >= 0; size--) {
                                setLastIn(sparseArray, sparseArray2, (Fragment) op.removed.get(size));
                            }
                        }
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 3:
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 4:
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 5:
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 6:
                        setLastIn(sparseArray, sparseArray2, op.fragment);
                        break;
                    case 7:
                        setFirstOut(sparseArray, sparseArray2, op.fragment);
                        break;
                    default:
                        break;
                }
            }
        }
    }

    public int commit() {
        return commitInternal(false);
    }

    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    /* Access modifiers changed, original: 0000 */
    public int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Commit: " + this);
            dump("  ", null, new PrintWriter(new LogWriter(TAG)), null);
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    public FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (!(this.mEnterAnim == 0 && this.mExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (!(this.mPopEnterAnim == 0 && this.mPopExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (!(this.mBreadCrumbTitleRes == 0 && this.mBreadCrumbTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (!(this.mBreadCrumbShortTitleRes == 0 && this.mBreadCrumbShortTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str2 = str + "    ";
            int i = 0;
            Op op = this.mHead;
            while (op != null) {
                String str3;
                switch (op.cmd) {
                    case 0:
                        str3 = "NULL";
                        break;
                    case 1:
                        str3 = "ADD";
                        break;
                    case 2:
                        str3 = "REPLACE";
                        break;
                    case 3:
                        str3 = "REMOVE";
                        break;
                    case 4:
                        str3 = "HIDE";
                        break;
                    case 5:
                        str3 = "SHOW";
                        break;
                    case 6:
                        str3 = "DETACH";
                        break;
                    case 7:
                        str3 = "ATTACH";
                        break;
                    default:
                        str3 = "cmd=" + op.cmd;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str3);
                printWriter.print(" ");
                printWriter.println(op.fragment);
                if (z) {
                    if (!(op.enterAnim == 0 && op.exitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.enterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.exitAnim));
                    }
                    if (!(op.popEnterAnim == 0 && op.popExitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.popEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.popExitAnim));
                    }
                }
                if (op.removed != null && op.removed.size() > 0) {
                    for (int i2 = 0; i2 < op.removed.size(); i2++) {
                        printWriter.print(str2);
                        if (op.removed.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str2);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(op.removed.get(i2));
                    }
                }
                op = op.next;
                i++;
            }
        }
    }

    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    public int getId() {
        return this.mIndex;
    }

    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    public FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    public boolean isEmpty() {
        return this.mNumOp == 0;
    }

    public TransitionState popFromBackStack(boolean z, TransitionState transitionState, SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "popFromBackStack: " + this);
            dump("  ", null, new PrintWriter(new LogWriter(TAG)), null);
        }
        if (SUPPORTS_TRANSITIONS && this.mManager.mCurState >= 1) {
            if (transitionState == null) {
                if (!(sparseArray.size() == 0 && sparseArray2.size() == 0)) {
                    transitionState = beginTransition(sparseArray, sparseArray2, true);
                }
            } else if (!z) {
                setNameOverrides(transitionState, this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
        }
        bumpBackStackNesting(-1);
        int i = transitionState != null ? 0 : this.mTransitionStyle;
        int i2 = transitionState != null ? 0 : this.mTransition;
        Op op = this.mTail;
        while (op != null) {
            int i3 = transitionState != null ? 0 : op.popEnterAnim;
            int i4 = transitionState != null ? 0 : op.popExitAnim;
            Fragment fragment;
            Fragment fragment2;
            switch (op.cmd) {
                case 1:
                    fragment = op.fragment;
                    fragment.mNextAnim = i4;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 2:
                    fragment = op.fragment;
                    if (fragment != null) {
                        fragment.mNextAnim = i4;
                        this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    }
                    if (op.removed == null) {
                        break;
                    }
                    for (int i5 = 0; i5 < op.removed.size(); i5++) {
                        fragment2 = (Fragment) op.removed.get(i5);
                        fragment2.mNextAnim = i3;
                        this.mManager.addFragment(fragment2, false);
                    }
                    break;
                case 3:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.addFragment(fragment2, false);
                    break;
                case 4:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.showFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 5:
                    fragment = op.fragment;
                    fragment.mNextAnim = i4;
                    this.mManager.hideFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 6:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.attachFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 7:
                    fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.detachFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
            }
            op = op.prev;
        }
        if (z) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(i2), i, true);
            transitionState = null;
        }
        if (this.mIndex >= 0) {
            this.mManager.freeBackStackIndex(this.mIndex);
            this.mIndex = -1;
        }
        return transitionState;
    }

    public FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, null);
    }

    public FragmentTransaction replace(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(i, fragment, str, 2);
        return this;
    }

    public void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Run: " + this);
        }
        if (!this.mAddToBackStack || this.mIndex >= 0) {
            TransitionState transitionState;
            bumpBackStackNesting(1);
            if (!SUPPORTS_TRANSITIONS || this.mManager.mCurState < 1) {
                transitionState = null;
            } else {
                SparseArray sparseArray = new SparseArray();
                SparseArray sparseArray2 = new SparseArray();
                calculateFragments(sparseArray, sparseArray2);
                transitionState = beginTransition(sparseArray, sparseArray2, false);
            }
            int i = transitionState != null ? 0 : this.mTransitionStyle;
            int i2 = transitionState != null ? 0 : this.mTransition;
            Op op = this.mHead;
            while (op != null) {
                int i3 = transitionState != null ? 0 : op.enterAnim;
                int i4 = transitionState != null ? 0 : op.exitAnim;
                Fragment fragment;
                switch (op.cmd) {
                    case 1:
                        fragment = op.fragment;
                        fragment.mNextAnim = i3;
                        this.mManager.addFragment(fragment, false);
                        break;
                    case 2:
                        Fragment fragment2 = op.fragment;
                        int i5 = fragment2.mContainerId;
                        if (this.mManager.mAdded != null) {
                            int size = this.mManager.mAdded.size() - 1;
                            while (size >= 0) {
                                fragment = (Fragment) this.mManager.mAdded.get(size);
                                if (FragmentManagerImpl.DEBUG) {
                                    Log.v(TAG, "OP_REPLACE: adding=" + fragment2 + " old=" + fragment);
                                }
                                if (fragment.mContainerId == i5) {
                                    if (fragment == fragment2) {
                                        fragment = null;
                                        op.fragment = null;
                                        size--;
                                        fragment2 = fragment;
                                    } else {
                                        if (op.removed == null) {
                                            op.removed = new ArrayList();
                                        }
                                        op.removed.add(fragment);
                                        fragment.mNextAnim = i4;
                                        if (this.mAddToBackStack) {
                                            fragment.mBackStackNesting++;
                                            if (FragmentManagerImpl.DEBUG) {
                                                Log.v(TAG, "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                                            }
                                        }
                                        this.mManager.removeFragment(fragment, i2, i);
                                    }
                                }
                                fragment = fragment2;
                                size--;
                                fragment2 = fragment;
                            }
                        }
                        if (fragment2 == null) {
                            break;
                        }
                        fragment2.mNextAnim = i3;
                        this.mManager.addFragment(fragment2, false);
                        break;
                    case 3:
                        fragment = op.fragment;
                        fragment.mNextAnim = i4;
                        this.mManager.removeFragment(fragment, i2, i);
                        break;
                    case 4:
                        fragment = op.fragment;
                        fragment.mNextAnim = i4;
                        this.mManager.hideFragment(fragment, i2, i);
                        break;
                    case 5:
                        fragment = op.fragment;
                        fragment.mNextAnim = i3;
                        this.mManager.showFragment(fragment, i2, i);
                        break;
                    case 6:
                        fragment = op.fragment;
                        fragment.mNextAnim = i4;
                        this.mManager.detachFragment(fragment, i2, i);
                        break;
                    case 7:
                        fragment = op.fragment;
                        fragment.mNextAnim = i3;
                        this.mManager.attachFragment(fragment, i2, i);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
                op = op.next;
            }
            this.mManager.moveToState(this.mManager.mCurState, i2, i, true);
            if (this.mAddToBackStack) {
                this.mManager.addBackStackState(this);
                return;
            }
            return;
        }
        throw new IllegalStateException("addToBackStack() called after commit()");
    }

    public FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.mBreadCrumbShortTitleRes = i;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    public FragmentTransaction setBreadCrumbTitle(int i) {
        this.mBreadCrumbTitleRes = i;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    public FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, 0, 0);
    }

    public FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.mEnterAnim = i;
        this.mExitAnim = i2;
        this.mPopEnterAnim = i3;
        this.mPopExitAnim = i4;
        return this;
    }

    public FragmentTransaction setTransition(int i) {
        this.mTransition = i;
        return this;
    }

    public FragmentTransaction setTransitionStyle(int i) {
        this.mTransitionStyle = i;
        return this;
    }

    public FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("BackStackEntry{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.mIndex);
        }
        if (this.mName != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.mName);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
