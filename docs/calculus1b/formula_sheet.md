# דף נוסחאות

מבוסס על **calculus1B-extended_formula_sheet.pdf**.

---

## נוסחאות טריגונומטריות

- \(\cos^2 x + \sin^2 x = 1\)
- \(\sin(x \pm y) = \sin x \cos y \pm \cos x \sin y\)
- \(\cos(x \pm y) = \cos x \cos y \mp \sin x \sin y\)
- \(\sin(2x) = 2\sin x \cos x\), \(\cos(2x) = \cos^2 x - \sin^2 x\)
- \(\sin^2 x = \frac{1 - \cos(2x)}{2}\), \(\cos^2 x = \frac{1 + \cos(2x)}{2}\)
- \(\cos\theta\cos\phi = \frac{\cos(\theta-\phi) + \cos(\theta+\phi)}{2}\)
- \(\sin\theta\sin\phi = \frac{\cos(\theta-\phi) - \cos(\theta+\phi)}{2}\)
- \(\sin\theta \pm \sin\phi = 2\sin\frac{\theta\pm\phi}{2}\cos\frac{\theta\mp\phi}{2}\)
- \(\cos\theta + \cos\phi = 2\cos\frac{\theta+\phi}{2}\cos\frac{\theta-\phi}{2}\)
- \(\cos\theta - \cos\phi = -2\sin\frac{\theta+\phi}{2}\sin\frac{\theta-\phi}{2}\)
- \(\cos(\arctan x) = \frac{1}{\sqrt{1+x^2}}\), \(\sin(\arctan x) = \frac{x}{\sqrt{1+x^2}}\)
- \(\sin(\arccos x) = \cos(\arcsin x) = \sqrt{1-x^2}\)

---

## אי־שוויונות נפוצים

- **אי־שוויון המשולש:** \(||x| - |y|| \le |x-y| \le |x| + |y|\)
- **אי־שוויון הממוצעים:** \(\frac{n}{\frac{1}{x_1}+\cdots+\frac{1}{x_n}} \le \sqrt[n]{x_1\cdots x_n} \le \frac{x_1+\cdots+x_n}{n}\)
- **אי־שוויון ברנולי:** \(1 + nx \le (1+x)^n\) (למתאימים)

---

## נוסחאות כלליות

- **בינום ניוטון:** \((x+y)^n = \sum_{k=0}^n \binom{n}{k} x^k y^{n-k}\), \(\binom{n}{k} = \frac{n!}{k!(n-k)!}\)
- \((a \pm b)^2 = a^2 \pm 2ab + b^2\)
- \(x^n - y^n = (x-y)(x^{n-1} + x^{n-2}y + \cdots + xy^{n-2} + y^{n-1})\)
- **סכום סדרה הנדסית:** \(\sum_{k=0}^n q^k = \frac{1-q^{n+1}}{1-q}\)
- \(\sum_{k=1}^n k = \frac{n(n+1)}{2}\), \(\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}\)

---

## חזקות ולוגריתמים

- \(x^r x^s = x^{r+s}\), \((x^r)^s = x^{rs}\)
- \(\ln(xy) = \ln x + \ln y\), \(\ln(x/y) = \ln x - \ln y\), \(\ln(x^r) = r\ln x\)
- \(e^{\ln x} = x\), \(\log_a x = \frac{\ln x}{\ln a}\)

---

## פונקציות קדומות (אינטגרל לא מסוים)

לכל \(\lambda \neq -1\): \(\int x^\lambda\,dx = \frac{x^{\lambda+1}}{\lambda+1} + C\)

- \(\int \frac{1}{x}\,dx = \ln|x| + C\)
- \(\int \sin x\,dx = -\cos x + C\), \(\int \cos x\,dx = \sin x + C\)
- \(\int e^x\,dx = e^x + C\)
- \(\int \frac{1}{1+x^2}\,dx = \arctan x + C\)

---

## פולינומי טיילור (בנקודה)

- \(\frac{1}{1-x} = \sum_{k=0}^n x^k + R_n(x)\)
- \(e^x = \sum_{k=0}^n \frac{x^k}{k!} + R_n(x)\)
- \(\ln(1+x) = \sum_{k=1}^n \frac{(-1)^{k+1} x^k}{k} + R_n(x)\)
- \(\sin x = \sum_{k=0}^n \frac{(-1)^k x^{2k+1}}{(2k+1)!} + R_{2n+1}(x)\)
- \(\cos x = \sum_{k=0}^n \frac{(-1)^k x^{2k}}{(2k)!} + R_{2n}(x)\)
