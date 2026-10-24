---
name: hanin-skills
description: بوابة مكتبة مهارات حنين على GitHub. استخدمها لأي طلب فيديو (إنجاز شهري، إعلان مبادرة، توثيق فعالية، موشن، أنيميشن، ريلز) أو عرض درس أو تصميم.
---

# بوابة مكتبة مهارات حنين

المكتبة على GitHub: `https://github.com/hanin123salim-max/hanin-skills`

## الخطوة ١ — اسحب المكتبة (مرة في كل محادثة)

```bash
LIB=~/hanin-skills
if [ -d "$LIB/.git" ]; then git -C "$LIB" pull --quiet; else git clone --quiet --depth 1 https://github.com/hanin123salim-max/hanin-skills.git "$LIB"; fi
```


## الخطوة ٢ — اقرأ بالترتيب
1. `$LIB/skills/_house-rules/SKILL.md` — دائمًا.
2. `$LIB/CATALOG.md` — لاختيار المهارة المناسبة.
3. `SKILL.md` الخاصة بالمهمة داخل `$LIB/skills/`.

## الخطوة ٣ — المهارات الخارجية عند الحاجة فقط

```bash
bash $LIB/external/sync.sh remotion          # أو hyperframes / iart-motion / iart-ad / iart-explainer / iart-reels / video-use / elevenlabs
```

تُحفظ في `~/.hanin-skills-external/<name>/`. اقرأ `SKILL.md` الرئيسية للحزمة، ثم اتبع توجيهها للمهارة الفرعية قبل كتابة أي كود.

## مهارات حساب Claude (خارج المستودع)
`video-edit` و`motion-reel` و`motion-guide` و`live-effects` مرفوعة في حساب Claude، فلا تُسحب من هنا. إن كانت متاحة في الجلسة استدعها بأداة Skill. وإن لم تكن متاحة، فالنسخ الأصلية من بسام (`video-edit.zip` و`motion-reel.zip` والأدلة PDF والبرومتات) في مجلد Google Drive «مكتبة المهارات - خاص» (https://drive.google.com/drive/folders/14AZILX3RoI1YAd6t8kXBWl1i6uh0uD1I): نزّل منه وفكّ في `~/.claude/skills/` بعد إذن حنين. أما `motion-guide` و`live-effects` فمبنيّتان من الأدلة نفسها، وارجع للدليل PDF المقابل إن لم تتوفرا.

## الهوية الخاصة (خارج GitHub)
اسم المدرسة وشعارها وألوانها في مجلد Google Drive «هوية المدرسة - خاص». اقرأها عبر رابط Google Drive عند الحاجة، ولا ترفعها إلى هذا المستودع أبدًا.

## الخطوة ٤ — اعرض ثم نفّذ
اعرض على حنين الفكرة والتصميم والحركة، وانتظر موافقتها، ثم ابنِ وصدّر وأرسل الملف.

## عند تعديل مهارة
إذا طلبت حنين تحسين مهارة أو إضافة نمط جديد: عدّل الملف داخل `$LIB`، وإن كان المستودع مربوطًا بصلاحية الكتابة فادفع التعديل (commit + push) حتى يصل لكل المحادثات القادمة.
