# פרק 2: המספרים הממשיים

## 2.1 ערך מוחלט

!!! info "הגדרה 2.1"
    $$|x| = \begin{cases} x & x \ge 0 \\ -x & x < 0 \end{cases}$$

!!! success "תכונות 2.2"
    1. $|x| \ge 0$ ו-$|x| = 0 \iff x = 0$
    2. $|xy| = |x| \cdot |y|$
    3. **אי-שוויון המשולש:** $|x + y| \le |x| + |y|$
    4. $||x| - |y|| \le |x - y|$

## 2.2 חסמים

!!! info "הגדרה 2.3"
    תהי $A \subseteq \mathbb{R}$ קבוצה לא ריקה.

    - $M$ **חסם מלעיל** של $A$ אם $a \le M$ לכל $a \in A$
    - $m$ **חסם מלרע** של $A$ אם $a \ge m$ לכל $a \in A$
    - $A$ **חסומה** אם חסומה מלעיל ומלרע

!!! info "הגדרה 2.4 (סופרימום ואינפימום)"
    - $\sup A$ = החסם המלעיל **הקטן ביותר** של $A$
    - $\inf A$ = החסם מלרע **הגדול ביותר** של $A$

!!! success "אפיון 2.5"
    $M = \sup A$ אם ורק אם:

    1. $M$ חסם מלעיל של $A$
    2. לכל $\varepsilon > 0$ קיים $a \in A$ כך ש-$a > M - \varepsilon$

## 2.3 אקסיומת השלמות

!!! danger "אקסיומה 2.6 (אקסיומת השלמות)"
    לכל קבוצה לא ריקה $A \subseteq \mathbb{R}$ החסומה מלעיל, קיים $\sup A \in \mathbb{R}$.

!!! success "משפט 2.7 (התכונה הארכימדית)"
    לכל $x \in \mathbb{R}$ קיים $n \in \mathbb{N}$ כך ש-$n > x$.

??? example "הוכחה"
    נניח בשלילה ש-$\mathbb{N}$ חסומה מלעיל.

    לפי אקסיומת השלמות, קיים $M = \sup \mathbb{N}$.

    לכן $M - 1$ אינו חסם מלעיל, קיים $n \in \mathbb{N}$ כך ש-$n > M - 1$.

    אבל $n + 1 \in \mathbb{N}$ ו-$n + 1 > M$, סתירה. $\blacksquare$

!!! success "משפט 2.8 (צפיפות הרציונליים)"
    בין כל שני ממשיים שונים יש מספר רציונלי.

    פורמלית: לכל $a < b$ קיים $q \in \mathbb{Q}$ כך ש-$a < q < b$.

??? example "הוכחה"
    מהתכונה הארכימדית, קיים $n \in \mathbb{N}$ כך ש-$n > \frac{1}{b-a}$, כלומר $n(b-a) > 1$.

    קיים $m \in \mathbb{Z}$ כך ש-$m - 1 \le na < m$.

    אז $na < m \le na + 1 < na + n(b-a) = nb$.

    לכן $a < \frac{m}{n} < b$, ו-$q = \frac{m}{n} \in \mathbb{Q}$. $\blacksquare$

---

## תרגילים

!!! question "תרגיל 1"
    תהי $A \subseteq \mathbb{R}$ לא ריקה וחסומה. הוכיחו כי $\sup(-A) = -\inf A$ כאשר $-A = \{-a : a \in A\}$.

??? success "פתרון"
    נסמן $m = \inf A$.

    **שלב 1:** $-m$ חסם מלעיל של $-A$.

    יהי $-a \in -A$. אז $a \in A$, לכן $a \ge m$, ולכן $-a \le -m$. $\checkmark$

    **שלב 2:** $-m$ החסם מלעיל הקטן ביותר.

    יהי $\varepsilon > 0$. לפי אפיון inf, קיים $a \in A$ כך ש-$a < m + \varepsilon$.

    לכן $-a > -m - \varepsilon$, ו-$-a \in -A$.

    לכן $-m - \varepsilon$ אינו חסם מלעיל של $-A$.

    מכאן $\sup(-A) = -m = -\inf A$. $\blacksquare$

!!! question "תרגיל 2"
    הוכיחו כי $\sup\{1 - \frac{1}{n} : n \in \mathbb{N}\} = 1$.

??? success "פתרון"
    נסמן $A = \{1 - \frac{1}{n} : n \in \mathbb{N}\}$.

    **שלב 1:** $1$ חסם מלעיל.

    לכל $n \in \mathbb{N}$: $\frac{1}{n} > 0$, לכן $1 - \frac{1}{n} < 1$. $\checkmark$

    **שלב 2:** לכל $\varepsilon > 0$ קיים איבר גדול מ-$1 - \varepsilon$.

    מהתכונה הארכימדית, קיים $n \in \mathbb{N}$ כך ש-$n > \frac{1}{\varepsilon}$, כלומר $\frac{1}{n} < \varepsilon$.

    לכן $1 - \frac{1}{n} > 1 - \varepsilon$, והאיבר $1 - \frac{1}{n} \in A$. $\checkmark$

    מכאן $\sup A = 1$. $\blacksquare$
