# فهرس المهارات

## أولًا: مهاراتي الخاصة (داخل `skills/`)

| المهارة | متى تُستخدم | الحالة |
|---|---|---|
| `_house-rules` | تُقرأ دائمًا قبل أي عمل | ✅ جاهزة |
| `lesson-deck` | درس تطبيقي/نموذجي، عرض درس، ورقة عمل | ✅ جاهزة |
| `monthly-achievement-video` | فيديو الإنجاز الشهري للمدرسة | 🟡 مسودة — تكتمل في المرحلة الثانية |
| `initiative-ad` | إعلان/برومو لمبادرة مدرسية أو تطوعية | 🟡 مسودة |
| `event-documentation` | فيديو توثيق فعالية من صور ومقاطع خام | 🟡 مسودة |

## ثانيًا: مهارات خارجية رسمية (تُجلب بـ `external/sync.sh <name>`)

| الاسم | المصدر | الاستخدام | يحتاج مفتاح؟ |
|---|---|---|---|
| `remotion` | remotion-dev/remotion → packages/skills | فيديو بالكود (React): أنيميشن، كابشن، تصدير MP4 | لا |
| `hyperframes` | heygen-com/hyperframes → skills | فيديو من HTML + مكتبة بلوكات وحركات جاهزة + GSAP | لا |
| `iart-motion` | iart-ai/motion-design-skills | تايبوغرافي متحرك، انتقالات، موشن احترافي | لا |
| `iart-ad` | iart-ai/ad-video-skills | إعلانات قصيرة | لا |
| `iart-explainer` | iart-ai/explainer-video-skills | فيديو شرح تعليمي | لا |
| `iart-reels` | iart-ai/tiktok-video-skills | ريلز/ستوري عمودي 9:16 | لا |
| `video-use` | browser-use/video-use | مونتاج مقاطع خام إلى فيديو نهائي | نعم (ElevenLabs) |
| `elevenlabs` | elevenlabs/skills | موسيقى، مؤثرات صوتية، تعليق صوتي، عزل ضوضاء | نعم (ElevenLabs) |

## ثالثًا: أدوات موجودة في Claude أصلًا (لا تحتاج تثبيت)

| الأداة | الاستخدام |
|---|---|
| مهارة `pptx` | ملف PowerPoint قابل للتعديل |
| عروض Claude (Slides) | عرض تفاعلي يُصدَّر PowerPoint أو PDF |
| تصاميم Claude (Design) | بوستر، إعلان ثابت، فلاير |
| Canva المربوط | تصاميمي في كانفا — **لا يُعدَّل شيء بدون إذني** |

## رابعًا: مهارات حساب Claude (مرفوعة في الإعدادات ← Skills، تعمل في Claude Code وكل المحادثات)

محتواها **ليس في هذا المستودع العام** لأنها من عمل صاحبها (بسام @with.bassam). تُستدعى بالاسم.
النسخ الأصلية محفوظة في Google Drive: مجلد «مكتبة المهارات - خاص».

| المهارة | الاستخدام |
|---|---|
| `video-edit` | مونتاج فيديو كلام عمودي: قص السكتات، كابشن عربي بتوقيت كل كلمة، رسومات ومشاهد بأسلوبي (بديل `video-editor-bassam` القديمة) |
| `motion-reel` | إعلان تطبيق/متجر من شاشاته وصوره الحقيقية، أو فيلم علامة تجارية (`template-brand`) |
| `motion-guide` | طريقة الموشن بالكود: تجهيز الاستوديو، التوجيه، قالب إعلان، أمثلة (موعد، نينجا، طيران الرياض)، المراجعة وقائمة الفحص |
| `live-effects` | مؤثرات حية على مقطع مصوَّر: نار، اختفاء بالدخان، برق، مشهد بالألوان المائية |

## أي مهارة لأي طلب؟

| الطلب | المسار |
|---|---|
| فيديو الإنجاز الشهري | `monthly-achievement-video` ← `remotion` أو `hyperframes` + `iart-motion` |
| إعلان مبادرة | `initiative-ad` ← `motion-guide` (الطريقة) + `hyperframes` أو `iart-ad` |
| توثيق فعالية | `event-documentation` ← `remotion` (+ `video-use` إن توفر المفتاح) |
| مقطع كلام (شرح، إعلان بصوتي) | `video-edit` |
| مؤثر سينمائي على مقطع مصوَّر | `live-effects` ثم `video-edit` للكابشن |
| إعلان تطبيق أو جهة من أصولها الحقيقية | `motion-reel` |
| عرض درس | `lesson-deck` ← `pptx` أو عروض Claude |
| بوستر/صورة ثابتة | تصاميم Claude أو Canva (بعد الإذن) |
