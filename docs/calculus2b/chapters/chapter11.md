# פרק 11: אינטגרלים על תיבות, קבוצות זניחות ומשפט לבג

## 11.1 תיבות ב-$\mathbb{R}^n$

!!! info "הגדרה 11.1 (תיבה)"
    **תיבה סגורה** ב-$\mathbb{R}^n$ היא מכפלת קטעים סגורים:
    $$B = [a_1,b_1] \times [a_2,b_2] \times \cdots \times [a_n,b_n]$$

    **הנפח** של $B$: $\operatorname{vol}(B) = \prod_{i=1}^n(b_i - a_i)$.

!!! info "הגדרה 11.2 (חלוקה של תיבה)"
    **חלוקה** של $B$ היא אוסף חלוקות $P_i$ של $[a_i, b_i]$ לכל $i$. החלוקה מגדירה תתי-תיבות $B_j$ עם $B = \bigcup_j B_j$ (חיתוכים רק בשפות).

## 11.2 אינטגרל רימן על תיבה

!!! info "הגדרה 11.3 (סכומי דרבו)"
    תהי $f: B \to \mathbb{R}$ חסומה ו-$P$ חלוקה של $B$ לתתי-תיבות $B_1, \ldots, B_N$. נגדיר:

    - $m_j = \inf_{B_j} f$, $M_j = \sup_{B_j} f$
    - **סכום דרבו תחתון:** $L(f, P) = \sum_{j=1}^N m_j \operatorname{vol}(B_j)$
    - **סכום דרבו עליון:** $U(f, P) = \sum_{j=1}^N M_j \operatorname{vol}(B_j)$

!!! info "הגדרה 11.4 (אינטגרביליות רימן)"
    $f: B \to \mathbb{R}$ חסומה היא **אינטגרבילית רימן** על $B$ אם:
    $$\underline{\int_B} f = \sup_P L(f,P) = \inf_P U(f,P) = \overline{\int_B} f$$

    הערך המשותף מסומן $\int_B f$ או $\int_B f(\mathbf{x})\,d\mathbf{x}$.

!!! success "משפט 11.5 (קריטריון רימן)"
    $f$ אינטגרבילית על $B$ $\iff$ לכל $\varepsilon > 0$ קיימת חלוקה $P$ עם $U(f,P) - L(f,P) < \varepsilon$.

!!! note "הערה — תכונות בסיסיות"
    1. **לינאריות:** $\int_B(\alpha f + \beta g) = \alpha\int_B f + \beta\int_B g$
    2. **מונוטוניות:** $f \le g$ על $B$ $\Rightarrow$ $\int_B f \le \int_B g$
    3. **אדיטיביות:** אם $B = B' \cup B''$ (חיתוך בשפה) אז $\int_B f = \int_{B'} f + \int_{B''} f$

## 11.3 קבוצות בעלות נפח אפס (זניחות)

!!! info "הגדרה 11.6 (נפח אפס — Measure Zero)"
    קבוצה $E \subseteq \mathbb{R}^n$ היא **בעלת נפח אפס** (או **זניחה**) אם לכל $\varepsilon > 0$ קיים כיסוי בן מניה של תיבות $\{B_k\}$ עם:
    $$E \subseteq \bigcup_{k=1}^\infty B_k, \qquad \sum_{k=1}^\infty \operatorname{vol}(B_k) < \varepsilon$$

!!! success "טענה 11.7 (תכונות קבוצות זניחות)"
    1. כל קבוצה בת מניה ב-$\mathbb{R}^n$ היא זניחה.
    2. איחוד בן מניה של קבוצות זניחות הוא זניח.
    3. אם $E \subseteq \mathbb{R}^n$ זניחה ו-$F \subseteq E$ אז $F$ זניחה.
    4. תת-יריעה חלקה ממימד $< n$ ב-$\mathbb{R}^n$ היא זניחה. בפרט, גרף של פונקציה רציפה $f: \mathbb{R}^{n-1} \to \mathbb{R}$ הוא זניח ב-$\mathbb{R}^n$.

!!! example "דוגמה"
    - $\mathbb{Q}^n$ זניחה ב-$\mathbb{R}^n$ (בת מניה).
    - $\{(x,y) \mid y = x^2\} \subseteq \mathbb{R}^2$ — גרף של פונקציה, זניחה.
    - $\{(x,y) \mid x^2+y^2 = 1\}$ — עקום חלק ב-$\mathbb{R}^2$, זניח.

## 11.4 משפט לבג לאינטגרביליות רימן

!!! info "הגדרה 11.8 (קבוצת אי-הרציפות)"
    עבור $f: B \to \mathbb{R}$, **קבוצת אי-הרציפות** של $f$ היא:
    $$D_f = \{\mathbf{x} \in B \mid f \text{ אינה רציפה ב-}\mathbf{x}\}$$

!!! success "משפט 11.9 (לבג — Lebesgue)"
    תהי $f: B \to \mathbb{R}$ חסומה. אז:
    $$f \text{ אינטגרבילית רימן על } B \iff D_f \text{ בעלת נפח אפס}$$

    כלומר: $f$ אינטגרבילית $\iff$ $f$ רציפה "כמעט בכל מקום".

!!! note "הערה"
    משפט לבג מכליל את המשפט הידוע: פונקציה רציפה על תיבה סגורה היא אינטגרבילית. הוא גם מכליל את העובדה שפונקציה חסומה עם מספר סופי (או בן מניה) של אי-רציפויות היא אינטגרבילית.

!!! example "דוגמה"
    פונקציית דיריכלה $\mathbf{1}_\mathbb{Q}$ על $[0,1]$: $D_f = [0,1]$ שאינה זניחה, לכן $f$ אינה אינטגרבילית רימן. לעומת זאת, $f(x) = \mathbf{1}_\mathbb{Q}(x) \cdot x$ גם אינה אינטגרבילית (אותה קבוצת אי-רציפות).

## 11.5 אינטגרל על תחום כללי

!!! info "הגדרה 11.10 (אינטגרל על תחום חסום)"
    תהי $\Omega \subseteq \mathbb{R}^n$ חסומה ו-$f: \Omega \to \mathbb{R}$. נבחר תיבה $B \supseteq \Omega$ ונגדיר:
    $$\tilde{f}(\mathbf{x}) = \begin{cases} f(\mathbf{x}), & \mathbf{x} \in \Omega \\ 0, & \mathbf{x} \notin \Omega \end{cases}$$

    אם $\tilde{f}$ אינטגרבילית על $B$, נגדיר $\int_\Omega f = \int_B \tilde{f}$.

!!! note "הערה"
    ההגדרה אינה תלויה בבחירת $B$ (אדיטיביות).

!!! info "הגדרה 11.11 (תחום ג'ורדן-מדיד)"
    $\Omega \subseteq \mathbb{R}^n$ חסומה היא **ג'ורדן-מדידה** (או: ניתנת-לריבוע) אם $\mathbf{1}_\Omega$ אינטגרבילית על תיבה $B \supseteq \Omega$. לפי משפט לבג, זה שקול ל-$\partial\Omega$ בעלת נפח אפס.

    **הנפח** של $\Omega$: $\operatorname{vol}(\Omega) = \int_B \mathbf{1}_\Omega$.

---

## תרגילים

!!! question "תרגיל 1"
    הוכיחו שאיחוד סופי של קבוצות בעלות נפח אפס הוא בעל נפח אפס.

??? success "פתרון"
    יהיו $E_1, \ldots, E_N$ זניחות. לכל $\varepsilon > 0$ ולכל $k$, קיים כיסוי $\{B_j^{(k)}\}$ עם $E_k \subseteq \bigcup_j B_j^{(k)}$ ו-$\sum_j\operatorname{vol}(B_j^{(k)}) < \frac{\varepsilon}{N}$.

    אז $\bigcup_{k=1}^N E_k \subseteq \bigcup_{k=1}^N\bigcup_j B_j^{(k)}$ וסכום הנפחים $< N \cdot \frac{\varepsilon}{N} = \varepsilon$. $\blacksquare$

!!! question "תרגיל 2"
    תהי $f: [0,1]^2 \to \mathbb{R}$ מוגדרת $f(x,y) = \begin{cases} 1, & x \in \mathbb{Q} \text{ ו-} y \in \mathbb{Q} \\ 0, & \text{אחרת} \end{cases}$. האם $f$ אינטגרבילית?

??? success "פתרון"
    $f$ רציפה בנקודה $(x,y)$ אם ורק אם $(x,y) \notin \mathbb{Q}^2$ (כי אם שתי הקואורדינטות אי-רציונליות, $f=0$ בסביבה, ובכל נקודה אחרת יש בעיה).

    למעשה, $D_f = \mathbb{Q} \times [0,1] \cup [0,1] \times \mathbb{Q}$. זו איחוד בן מניה של קטעים (קבוצות זניחות ב-$\mathbb{R}^2$), לכן $D_f$ זניחה.

    לכן $f$ אינטגרבילית. $\int_{[0,1]^2} f = 0$ (כי $f = 0$ כמעט בכל מקום). $\blacksquare$

!!! question "תרגיל 3"
    הוכיחו שהעיגול $\Omega = \{(x,y) \mid x^2+y^2 \le 1\}$ הוא ג'ורדן-מדיד.

??? success "פתרון"
    $\partial\Omega = \{(x,y) \mid x^2+y^2 = 1\}$ — מעגל היחידה. זהו גרף מקומי של פונקציה חלקה (למשל $y = \pm\sqrt{1-x^2}$), ולכן תת-יריעה ממימד 1 ב-$\mathbb{R}^2$.

    תת-יריעה ממימד $< n$ היא זניחה ב-$\mathbb{R}^n$, לכן $\partial\Omega$ בעלת נפח אפס ב-$\mathbb{R}^2$.

    לפי משפט לבג, $\mathbf{1}_\Omega$ אינטגרבילית, כלומר $\Omega$ ג'ורדן-מדיד. $\blacksquare$
