# פרק 1: תורת הקבוצות

## 1.1 הגדרות בסיסיות

!!! info "הגדרה 1.1 (קבוצה)"
    **קבוצה** היא אוסף של אובייקטים הנקראים **איברים**. נסמן $x \in A$ אם $x$ איבר ב-$A$.

!!! info "הגדרה 1.2 (תת-קבוצה)"
    $A \subseteq B$ אם לכל $x \in A$ מתקיים $x \in B$.

    $A = B$ אם $A \subseteq B$ וגם $B \subseteq A$.

## 1.2 פעולות על קבוצות

!!! info "הגדרה 1.3"
    - **איחוד:** $A \cup B = \{x : x \in A \text{ או } x \in B\}$
    - **חיתוך:** $A \cap B = \{x : x \in A \text{ וגם } x \in B\}$
    - **הפרש:** $A \setminus B = \{x : x \in A \text{ וגם } x \notin B\}$
    - **משלים:** $A^c = U \setminus A$ (כאשר $U$ הקבוצה האוניברסלית)

!!! success "משפט 1.4 (חוקי דה-מורגן)"
    1. $(A \cup B)^c = A^c \cap B^c$
    2. $(A \cap B)^c = A^c \cup B^c$

??? example "הוכחה"
    **הוכחת (1):**

    $x \in (A \cup B)^c$

    $\iff x \notin A \cup B$

    $\iff x \notin A$ וגם $x \notin B$

    $\iff x \in A^c$ וגם $x \in B^c$

    $\iff x \in A^c \cap B^c$ $\blacksquare$

## 1.3 פונקציות

!!! info "הגדרה 1.5 (פונקציה)"
    **פונקציה** $f : A \to B$ היא התאמה שלכל $a \in A$ מתאימה איבר יחיד $f(a) \in B$.

    - $A$ נקרא **תחום ההגדרה**
    - $B$ נקרא **הטווח**

!!! info "הגדרה 1.6"
    פונקציה $f : A \to B$ נקראת:

    - **חד-חד-ערכית (חח"ע):** $f(x_1) = f(x_2) \Rightarrow x_1 = x_2$
    - **על:** לכל $b \in B$ קיים $a \in A$ כך ש-$f(a) = b$
    - **הפיכה:** אם היא חח"ע ועל

## 1.4 עוצמות

!!! info "הגדרה 1.7"
    שתי קבוצות $A, B$ הן **שוות עוצמה** אם קיימת פונקציה חח"ע ועל $f : A \to B$.

    - קבוצה **בת-מנייה** אם היא שווה עוצמה ל-$\mathbb{N}$
    - קבוצה **ניתנת לספירה** אם היא סופית או בת-מנייה

!!! success "משפט 1.8"
    $\mathbb{Q}$ בת-מנייה.

!!! success "משפט 1.9 (קנטור)"
    $\mathbb{R}$ אינה בת-מנייה (לא ניתנת לספירה).

---

## תרגילים

!!! question "תרגיל 1"
    הוכיחו כי $(A \cap B)^c = A^c \cup B^c$.

??? success "פתרון"
    $x \in (A \cap B)^c$

    $\iff x \notin A \cap B$

    $\iff \neg(x \in A \text{ וגם } x \in B)$

    $\iff x \notin A$ או $x \notin B$

    $\iff x \in A^c$ או $x \in B^c$

    $\iff x \in A^c \cup B^c$ $\blacksquare$

!!! question "תרגיל 2"
    הוכיחו כי $f : A \to B$ חח"ע אם ורק אם לכל $C, D \subseteq A$ מתקיים $f(C \cap D) = f(C) \cap f(D)$.

??? success "פתרון"
    **כיוון $\Leftarrow$:** נניח $f(x_1) = f(x_2) = y$. נגדיר $C = \{x_1\}$, $D = \{x_2\}$.

    $f(C) \cap f(D) = \{y\} \cap \{y\} = \{y\} \neq \emptyset$

    לפי ההנחה: $f(C \cap D) = f(C) \cap f(D) \neq \emptyset$

    לכן $C \cap D \neq \emptyset$, כלומר $x_1 = x_2$. $\blacksquare$

    **כיוון $\Rightarrow$:** נניח $f$ חח"ע. תמיד $f(C \cap D) \subseteq f(C) \cap f(D)$.

    יהי $y \in f(C) \cap f(D)$. קיימים $c \in C$, $d \in D$ כך ש-$f(c) = f(d) = y$.

    מחח"ע: $c = d$, לכן $c \in C \cap D$ ו-$y = f(c) \in f(C \cap D)$. $\blacksquare$
