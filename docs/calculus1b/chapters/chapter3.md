# פרק 3: סדרות

## 3.1 הגדרת גבול

!!! info "הגדרה 3.1 (גבול של סדרה)"
    $(a_n)$ **מתכנסת** ל-$L$ אם:
    $$\forall \varepsilon > 0 \; \exists N \in \mathbb{N} \; \forall n > N : |a_n - L| < \varepsilon$$

    נכתוב $\lim_{n \to \infty} a_n = L$ או $a_n \to L$.

!!! success "משפט 3.2 (יחידות הגבול)"
    אם $a_n \to L_1$ וגם $a_n \to L_2$ אז $L_1 = L_2$.

!!! success "משפט 3.3 (חסימות)"
    סדרה מתכנסת היא חסומה.

??? example "הוכחה"
    נניח $a_n \to L$. עבור $\varepsilon = 1$, קיים $N$ כך שלכל $n > N$: $|a_n - L| < 1$, כלומר $|a_n| < |L| + 1$.

    נגדיר $M = \max\{|a_1|, \ldots, |a_N|, |L| + 1\}$.

    אז $|a_n| \le M$ לכל $n$. $\blacksquare$

## 3.2 אריתמטיקה של גבולות

!!! success "משפט 3.4"
    אם $a_n \to L$ ו-$b_n \to M$ אז:

    1. $a_n + b_n \to L + M$
    2. $a_n \cdot b_n \to L \cdot M$
    3. $\frac{a_n}{b_n} \to \frac{L}{M}$ (אם $M \neq 0$)
    4. $c \cdot a_n \to c \cdot L$

!!! success "משפט 3.5 (כלל הסנדוויץ')"
    אם $a_n \le b_n \le c_n$ ו-$a_n \to L$ ו-$c_n \to L$ אז $b_n \to L$.

## 3.3 סדרות מונוטוניות

!!! info "הגדרה 3.6"
    - $(a_n)$ **עולה** אם $a_n \le a_{n+1}$ לכל $n$
    - $(a_n)$ **יורדת** אם $a_n \ge a_{n+1}$ לכל $n$
    - $(a_n)$ **מונוטונית** אם עולה או יורדת

!!! success "משפט 3.7 (התכנסות סדרה מונוטונית)"
    סדרה מונוטונית וחסומה מתכנסת.

    - סדרה עולה וחסומה מלעיל: $a_n \to \sup\{a_n\}$
    - סדרה יורדת וחסומה מלרע: $a_n \to \inf\{a_n\}$

## 3.4 תת-סדרות

!!! info "הגדרה 3.8"
    $(a_{n_k})$ **תת-סדרה** של $(a_n)$ אם $(n_k)$ סדרה עולה ממש של מספרים טבעיים.

!!! success "משפט 3.9 (בולצאנו-ויירשטראס)"
    לכל סדרה חסומה יש תת-סדרה מתכנסת.

## 3.5 סדרות קושי

!!! info "הגדרה 3.10 (סדרת קושי)"
    $(a_n)$ **סדרת קושי** אם:
    $$\forall \varepsilon > 0 \; \exists N \; \forall m, n > N : |a_m - a_n| < \varepsilon$$

!!! success "משפט 3.11 (קריטריון קושי)"
    סדרה מתכנסת אם ורק אם היא סדרת קושי.

## 3.6 הגדרת $e$

!!! success "משפט 3.12"
    הסדרה $a_n = \left(1 + \frac{1}{n}\right)^n$ עולה וחסומה, לכן מתכנסת.

    גבולה מסומן $e = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n \approx 2.718$.

## 3.7 גבול עליון ותחתון

!!! info "הגדרה 3.13"
    תהי $(a_n)$ סדרה חסומה.

    $$\limsup_{n \to \infty} a_n = \lim_{n \to \infty} \sup_{k \ge n} a_k$$

    $$\liminf_{n \to \infty} a_n = \lim_{n \to \infty} \inf_{k \ge n} a_k$$

!!! success "משפט 3.14"
    $(a_n)$ מתכנסת אם ורק אם $\limsup a_n = \liminf a_n$.

---

## תרגילים

!!! question "תרגיל 1"
    הוכיחו מהגדרה כי $\lim_{n \to \infty} \frac{n}{n+1} = 1$.

??? success "פתרון"
    יהי $\varepsilon > 0$. צ"ל: קיים $N$ כך שלכל $n > N$: $\left|\frac{n}{n+1} - 1\right| < \varepsilon$.

    $$\left|\frac{n}{n+1} - 1\right| = \left|\frac{n - (n+1)}{n+1}\right| = \frac{1}{n+1}$$

    נדרוש $\frac{1}{n+1} < \varepsilon$, כלומר $n > \frac{1}{\varepsilon} - 1$.

    נבחר $N = \lceil \frac{1}{\varepsilon} \rceil$.

    אז לכל $n > N$: $\frac{1}{n+1} < \frac{1}{N+1} \le \frac{1}{1/\varepsilon} = \varepsilon$. $\blacksquare$

!!! question "תרגיל 2"
    הוכיחו כי $\lim_{n \to \infty} \sqrt[n]{n} = 1$.

??? success "פתרון"
    נסמן $a_n = \sqrt[n]{n} - 1 \ge 0$ (כי $n \ge 1$).

    אז $n = (1 + a_n)^n$.

    מהבינום: $(1 + a_n)^n \ge 1 + \binom{n}{2}a_n^2 = 1 + \frac{n(n-1)}{2}a_n^2$ (עבור $n \ge 2$).

    לכן $n \ge 1 + \frac{n(n-1)}{2}a_n^2$, ומכאן:

    $$a_n^2 \le \frac{2(n-1)}{n(n-1)} = \frac{2}{n}$$

    לכן $0 \le a_n \le \sqrt{\frac{2}{n}} \to 0$.

    לפי סנדוויץ': $a_n \to 0$, כלומר $\sqrt[n]{n} \to 1$. $\blacksquare$

!!! question "תרגיל 3"
    תהי $(a_n)$ סדרה כך ש-$a_n > 0$ ו-$\frac{a_{n+1}}{a_n} \to L < 1$. הוכיחו כי $a_n \to 0$.

??? success "פתרון"
    נבחר $q$ כך ש-$L < q < 1$.

    קיים $N$ כך שלכל $n > N$: $\frac{a_{n+1}}{a_n} < q$.

    לכן לכל $k \ge 1$:
    $$a_{N+k} = a_N \cdot \frac{a_{N+1}}{a_N} \cdot \frac{a_{N+2}}{a_{N+1}} \cdots \frac{a_{N+k}}{a_{N+k-1}} < a_N \cdot q^k$$

    כיוון ש-$0 < q < 1$: $q^k \to 0$.

    לכן $0 < a_{N+k} < a_N \cdot q^k \to 0$.

    לפי סנדוויץ': $a_n \to 0$. $\blacksquare$
