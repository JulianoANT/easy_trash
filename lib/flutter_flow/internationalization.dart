import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'de', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? deText = '',
    String? arText = '',
  }) =>
      [enText, esText, deText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'o07j3mgv': {
      'en': 'Bem Vindo',
      'ar': 'البدء',
      'de': 'Loslegen',
      'es': 'Empezar',
    },
    'fzxvw3mu': {
      'en': 'Faça o login na sua conta.',
      'ar': 'قم بإنشاء حسابك أدناه.',
      'de': 'Erstellen Sie unten Ihr Konto.',
      'es': 'Crea tu cuenta a continuación.',
    },
    'a9j78va9': {
      'en': 'Endereço de email',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'i7f18cve': {
      'en': 'Entre com seu email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'wztjmbn8': {
      'en': 'Senha',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Contraseña',
    },
    'lw1jpm1f': {
      'en': 'Entre com sua senha...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    'm2xyjvuf': {
      'en': 'Esqueceu a senha?',
      'ar': 'هل نسيت كلمة السر؟',
      'de': 'Passwort vergessen?',
      'es': '¿Has olvidado tu contraseña?',
    },
    'qbmoi1av': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
      'de': 'Anmeldung',
      'es': 'Acceso',
    },
    'cjqb8ial': {
      'en': 'Não tem contra?',
      'ar': 'ليس لديك حساب؟',
      'de': 'Sie haben kein Konto?',
      'es': '¿No tienes una cuenta?',
    },
    'a0iimirx': {
      'en': 'Criar',
      'ar': 'ليس لديك حساب؟',
      'de': 'Sie haben kein Konto?',
      'es': '¿No tienes una cuenta?',
    },
    '1zqiw31h': {
      'en': 'Continuar sem conta',
      'ar': 'تواصل كضيف',
      'de': 'Als Gast fortfahren',
      'es': 'Continua como invitado',
    },
    '2bb3vct7': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // registerAccount
  {
    'gpokmd81': {
      'en': 'Começar',
      'ar': 'البدء',
      'de': 'Loslegen',
      'es': 'Empezar',
    },
    'oitrrwgg': {
      'en': 'Crie sua conta abaixo.',
      'ar': 'قم بإنشاء حسابك أدناه.',
      'de': 'Erstellen Sie unten Ihr Konto.',
      'es': 'Crea tu cuenta a continuación.',
    },
    'gcwdqm4g': {
      'en': 'Endereço de email',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'iam0xgwx': {
      'en': 'Digite seu email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'bqv15dcf': {
      'en': 'Senha',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Contraseña',
    },
    'joih97mn': {
      'en': 'Digite sua senha...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    'rzpiwq9p': {
      'en': 'Confirmar senha',
      'ar': 'تأكيد كلمة المرور',
      'de': 'Kennwort bestätigen',
      'es': 'Confirmar contraseña',
    },
    'eyfkffka': {
      'en': 'Digite sua senha...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    '5kmjfwsk': {
      'en': 'Criar sua conta',
      'ar': 'إنشاء حساب',
      'de': 'Benutzerkonto erstellen',
      'es': 'Crear una cuenta',
    },
    '3twynvfz': {
      'en': 'Login',
      'ar': 'هل لديك حساب؟',
      'de': 'Sie haben bereits ein Konto?',
      'es': '¿Ya tienes una cuenta?',
    },
    '9ssznj0g': {
      'en': 'Já tem uma conta?',
      'ar': 'هل لديك حساب؟',
      'de': 'Sie haben bereits ein Konto?',
      'es': '¿Ya tienes una cuenta?',
    },
    '3ugmx2zp': {
      'en': 'Continuar sem conta',
      'ar': 'تواصل كضيف',
      'de': 'Als Gast fortfahren',
      'es': 'Continua como invitado',
    },
    'momge5oj': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // completeProfile
  {
    'yhcaf7r2': {
      'en': 'Complete seu perfil',
      'ar': 'الملف الشخصي الكامل',
      'de': 'Vollständiges Profil',
      'es': 'Perfil completo',
    },
    'r6npjsue': {
      'en': 'Faça o upload da sua foto de perfil.',
      'ar': 'قم بتحميل صورة لنا للتعرف عليك بسهولة.',
      'de':
          'Laden Sie ein Foto hoch, damit wir Sie leicht identifizieren können.',
      'es': 'Sube una foto para que te identifiquemos fácilmente.',
    },
    'sdptn7dd': {
      'en': 'Seu Nome',
      'ar': 'اسمك',
      'de': 'Dein Name',
      'es': 'Tu nombre',
    },
    'hbhd3bdt': {
      'en': 'Continuar',
      'ar': 'الملف الشخصي الكامل',
      'de': 'Vollständiges Profil',
      'es': 'Perfil completo',
    },
    'w75dikic': {
      'en': 'Pular',
      'ar': 'تخطي في الوقت الراهن',
      'de': 'Für jetzt überspringen',
      'es': 'Saltar por ahora',
    },
    '1eac148w': {
      'en': 'Field is required',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ew7dbn3s': {
      'en': 'Field is required',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jhhlgzk5': {
      'en': 'Field is required',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4k3jnl38': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // forgotPassword
  {
    'g416xg9f': {
      'en': 'Esqueceu a senha',
      'ar': 'هل نسيت كلمة السر',
      'de': 'Passwort vergessen',
      'es': 'Has olvidado tu contraseña',
    },
    'xaiad71o': {
      'en':
          'Digite o e-mail associado à sua conta e lhe enviaremos um código de verificação.',
      'ar': 'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رمز التحقق.',
      'de':
          'Geben Sie die mit Ihrem Konto verknüpfte E-Mail-Adresse ein und wir senden Ihnen einen Bestätigungscode.',
      'es':
          'Introduce el correo electrónico asociado a tu cuenta y te enviaremos un código de verificación.',
    },
    'u4nuk910': {
      'en': 'Endereço de email',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    '37kotxi0': {
      'en': 'Digite seu email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'hiwpaze1': {
      'en': 'Enviar Link',
      'ar': 'أرسل رابط إعادة التعيين',
      'de': 'Zurücksetzen-Link senden',
      'es': 'Enviar enlace de reinicio',
    },
    '598b8d3m': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // onboarding
  {
    '2u0jqu36': {
      'en': 'Próximo',
      'ar': 'إنشاء ميزانيتك',
      'de': 'Erstellen Sie Ihr Budget',
      'es': 'Crea tu presupuesto',
    },
    'lyuxfud1': {
      'en': 'Próximo',
      'ar': 'إنشاء ميزانيتك',
      'de': 'Erstellen Sie Ihr Budget',
      'es': 'Crea tu presupuesto',
    },
    's9458e7m': {
      'en': 'Próximo',
      'ar': 'إنشاء ميزانيتك',
      'de': 'Erstellen Sie Ihr Budget',
      'es': 'Crea tu presupuesto',
    },
    '36fafibf': {
      'en': 'Iniciar',
      'ar': 'إنشاء ميزانيتك',
      'de': 'Erstellen Sie Ihr Budget',
      'es': 'Crea tu presupuesto',
    },
    'oo0kk9qe': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // MY_profilePage
  {
    'f1bvbey3': {
      'en': 'Minha Conta',
      'ar': 'حسابي',
      'de': 'Mein Konto',
      'es': 'Mi cuenta',
    },
    'i61y9ibx': {
      'en': 'Editar Perfil',
      'ar': 'تعديل الملف الشخصي',
      'de': 'Profil bearbeiten',
      'es': 'Editar perfil',
    },
    '03k0vw86': {
      'en': 'Mudar Senha',
      'ar': 'تغيير كلمة المرور',
      'de': 'Kennwort ändern',
      'es': 'Cambia la contraseña',
    },
    '6w6wv95p': {
      'en': 'Configurações de notificação',
      'ar': 'إعدادات الإشعار',
      'de': 'Benachrichtigungseinstellungen',
      'es': 'Configuración de las notificaciones',
    },
    '9aogde79': {
      'en': 'O que é a Pegada CO2?',
      'ar': 'درس تعليمي',
      'de': 'Lernprogramm',
      'es': 'Tutorial',
    },
    'eojlfs66': {
      'en': 'Política de Privacidade',
      'ar': 'سياسة الخصوصية',
      'de': 'Datenschutz-Bestimmungen',
      'es': 'Política de privacidad',
    },
    '6gf09yoe': {
      'en': 'Sair da conta',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8srr2k0j': {
      'en': '➖➖',
      'ar': '•',
      'de': '•',
      'es': '•',
    },
  },
  // dashboardDetails
  {
    'shdl7viw': {
      'en': 'Seu Relatório',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xjpyzxcb': {
      'en': 'Sua Pegada CO2',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qglnio7f': {
      'en': 'Por Mês',
      'ar': 'كل شهر',
      'de': 'Pro Monat',
      'es': 'Por mes',
    },
    'p4jqslgs': {
      'en': 'Total no Ano',
      'ar': 'إجمال الصرف',
      'de': 'Gesamtausgaben',
      'es': 'Total gastado',
    },
    '3s74lfb9': {
      'en': 'Resíduos Sólidos Gerados',
      'ar': 'المعاملات',
      'de': 'Transaktionen',
      'es': 'Actas',
    },
    'r8jx3w7o': {
      'en': 'Resíduo',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nnpxm3mc': {
      'en': 'CO2 KG',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ubbax7fv': {
      'en': 'Papel e papelão',
      'ar': '',
      'de': '',
      'es': '',
    },
    'goixbbi2': {
      'en': 'Vidro',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ki5b8xsf': {
      'en': 'Alumínio',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9rn5bpuj': {
      'en': 'Outros metais',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hw8i3pqg': {
      'en': 'Plástico',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l53kroui': {
      'en': '➖➖',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // transferComplete
  {
    'xf8d4sm8': {
      'en': 'Transfer Complete',
      'ar': 'نقل كامل',
      'de': 'Übertragung vollständig',
      'es': 'transferencia completa',
    },
    'iq9jjji8': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'ar':
          'عمل رائع ، لقد قمت بتحويل الأموال بنجاح. قد يستغرق خروج الأموال من حسابك بضعة أيام.',
      'de':
          'Großartige Arbeit, Sie haben erfolgreich Geld überwiesen. Es kann einige Tage dauern, bis das Geld von Ihrem Konto abgebucht wird.',
      'es':
          'Buen trabajo, transfirió fondos con éxito. Los fondos pueden tardar unos días en salir de su cuenta.',
    },
    'wrbg19ed': {
      'en': 'Okay',
      'ar': 'تمام',
      'de': 'Okay',
      'es': 'Okey',
    },
    'ndkybnrt': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // editProfile
  {
    '4rzqov3y': {
      'en': 'Editar Perfil',
      'ar': 'تعديل الملف الشخصي',
      'de': 'Profil bearbeiten',
      'es': 'Editar perfil',
    },
    'zoxan2gi': {
      'en': 'Mudar foto',
      'ar': 'غير الصوره',
      'de': 'Foto ändern',
      'es': 'Cambiar foto',
    },
    '3p9y21e2': {
      'en': 'Seu Nome',
      'ar': 'اسمك',
      'de': 'Dein Name',
      'es': 'Tu nombre',
    },
    'dw9gmjdc': {
      'en': 'Please enter a valid number...',
      'ar': 'من فضلك أدخل رقما صالحا...',
      'de': 'Bitte geben Sie eine gültige Nummer ein...',
      'es': 'Por favor ingrese un número valido...',
    },
    'z4fstn5l': {
      'en': 'Endereço de Email',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'jozgvwyg': {
      'en': 'Your email',
      'ar': 'بريدك الالكتروني',
      'de': 'Deine E-Mail',
      'es': 'Tu correo electrónico',
    },
    'i6edcl52': {
      'en': 'Salvar Mudanças',
      'ar': 'حفظ التغييرات',
      'de': 'Änderungen speichern',
      'es': 'Guardar cambios',
    },
    '59naq8ur': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // changePassword
  {
    'l5iggwaz': {
      'en': 'Mudar Senha',
      'ar': 'تغيير كلمة المرور',
      'de': 'Kennwort ändern',
      'es': 'Cambia la contraseña',
    },
    '2b97u8y5': {
      'en':
          'Digite o e-mail associado à sua conta e enviaremos um link para redefinir sua senha.',
      'ar':
          'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رابطًا لإعادة تعيين كلمة المرور الخاصة بك.',
      'de':
          'Geben Sie die mit Ihrem Konto verknüpfte E-Mail-Adresse ein und wir senden Ihnen einen Link zum Zurücksetzen Ihres Passworts.',
      'es':
          'Ingrese el correo electrónico asociado con su cuenta y le enviaremos un enlace para restablecer su contraseña.',
    },
    'ajy1c3r9': {
      'en': 'Endereço de Email',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'hsqfoxya': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'if4pz6lm': {
      'en': 'Enviar Link',
      'ar': 'أرسل رابط إعادة التعيين',
      'de': 'Zurücksetzen-Link senden',
      'es': 'Enviar enlace de reinicio',
    },
    '5tvk9lv0': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // notificationsSettings
  {
    'sc4ff4ce': {
      'en': 'Notificações',
      'ar': 'إشعارات',
      'de': 'Benachrichtigungen',
      'es': 'Notificaciones',
    },
    'r72zvrv5': {
      'en':
          'Escolha abaixo quais notificações você deseja receber e atualizaremos as configurações.',
      'ar': 'اختر الإشعارات التي تريد تلقيها أدناه وسنقوم بتحديث الإعدادات.',
      'de':
          'Wählen Sie unten aus, welche Benachrichtigungen Sie erhalten möchten, und wir aktualisieren die Einstellungen.',
      'es':
          'Elija qué notificaciones desea recibir a continuación y actualizaremos la configuración.',
    },
    'gjygkr0n': {
      'en': 'Notificações na Tela',
      'ar': 'دفع الإخطارات',
      'de': 'Mitteilungen',
      'es': 'Notificaciones push',
    },
    '3y3yhxbk': {
      'en': 'Receba notificações de nosso aplicativo regularmente.',
      'ar': 'تلقي إشعارات من تطبيقنا على أساس شبه منتظم.',
      'de':
          'Erhalten Sie regelmäßig Push-Benachrichtigungen von unserer Anwendung.',
      'es':
          'Reciba notificaciones Push de nuestra aplicación de forma semi regular.',
    },
    '1ytebj35': {
      'en': 'Notificações no Email',
      'ar': 'اشعارات البريد الالكتروني',
      'de': 'E-Mail Benachrichtigungen',
      'es': 'Notificaciónes de Correo Electrónico',
    },
    '9lvh5nst': {
      'en': 'Receba notificações por e-mail sobre coletas e novos recursos.',
      'ar':
          'تلقي إشعارات البريد الإلكتروني من فريق التسويق لدينا حول الميزات الجديدة.',
      'de':
          'Erhalten Sie E-Mail-Benachrichtigungen von unserem Marketingteam über neue Funktionen.',
      'es':
          'Reciba notificaciones por correo electrónico de nuestro equipo de marketing sobre nuevas funciones.',
    },
    '69d2j74u': {
      'en': 'Serviços de Localização',
      'ar': 'خدمات الموقع',
      'de': 'Standortdienste',
      'es': 'Servicios de localización',
    },
    '3k8cuv0d': {
      'en':
          'Permita-nos rastrear sua localização, isso ajuda a encontar um ponto de coleta perto de você.',
      'ar':
          'اسمح لنا بتتبع موقعك ، فهذا يساعد على تتبع الإنفاق ويحافظ على سلامتك.',
      'de':
          'Erlauben Sie uns, Ihren Standort zu verfolgen, dies hilft, die Ausgaben im Auge zu behalten und schützt Sie.',
      'es':
          'Permítanos rastrear su ubicación, esto ayuda a realizar un seguimiento de los gastos y lo mantiene seguro.',
    },
    'isgrgbfs': {
      'en': 'Salvar',
      'ar': 'حفظ التغييرات',
      'de': 'Änderungen speichern',
      'es': 'Guardar cambios',
    },
    'a96mlyeh': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // privacyPolicy
  {
    'alczfiiy': {
      'en': 'Política de Privacidade',
      'ar': 'سياسة الخصوصية',
      'de': 'Datenschutz-Bestimmungen',
      'es': 'Política de privacidad',
    },
    'nbiyrnzl': {
      'en':
          '1. Introdução\n\nAgradecemos por utilizar o nosso aplicativo de Gestão de Resíduos Sólidos. Estamos comprometidos em proteger a sua privacidade e garantir a segurança dos seus dados. Esta Política de Privacidade descreve como coletamos, usamos, e protegemos suas informações pessoais ao utilizar o aplicativo.\n\n2. Coleta de Informações\n\nO aplicativo pode coletar as seguintes informações:\n\nInformações de Localização: Com sua permissão, coletamos dados de localização para exibir pontos de coleta de reciclagem próximos a você. Estes dados não são armazenados e são usados apenas enquanto o aplicativo está em uso.\nInformações de Uso: Dados sobre as interações no aplicativo, como o uso de funcionalidades e agendamento de coletas, podem ser coletados para aprimorar a experiência do usuário e melhorar nossos serviços.\nInformações Pessoais: Quando necessário, o aplicativo pode solicitar informações como nome e e-mail para cadastro ou criação de conta.\n\n3. Uso das Informações\n\nAs informações coletadas são utilizadas para:\n\nFacilitar a exibição de pontos de coleta próximos.\nCalcular a pegada de carbono baseada nas informações de resíduos descartados pelo usuário.\nFornecer notificações de coleta e melhorar a funcionalidade do aplicativo.\nOferecer suporte ao usuário e otimizar o desempenho do aplicativo.\n\n4. Compartilhamento de Informações\n\nNão compartilhamos informações pessoais com terceiros, exceto em situações específicas, como:\nConformidade Legal: Podemos compartilhar dados se exigido por lei ou por solicitações governamentais.\nParceiros de Serviço: Em casos específicos, para manutenção ou melhoria do aplicativo, podemos compartilhar dados com prestadores de serviço, sempre sob obrigações de confidencialidade.\n\n5. Segurança dos Dados\n\nEstamos comprometidos em proteger as suas informações e utilizamos medidas de segurança apropriadas para evitar acesso, alteração, divulgação ou destruição não autorizada dos dados. Contudo, nenhum sistema de segurança é infalível, e, embora nos esforcemos para proteger suas informações, não podemos garantir total segurança.',
      'ar':
          'Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. غير consectetur a erat nam. دونك ألتريسيس تينسيدونت قوس غير مخادع. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis في erat pellentesque adipiscing. موريس نونك كونيج سيرة ذاتية. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia في quis risus sed vulputate odio. فيليت كريمينسيم sodales ut eu sem سيرة ذاتية صحيحة justo eget. Risus feugiat في ما قبل ميتوس. Leo vel orci porta non pulvinar neque laoreet suspension interdum. Suscipit Tellus mauris a Diam Maecenas Sed enim ut sem. SEM السيرة الذاتية الصحيحة justo eget magna fermentum iaculis eu. لاسينيا في quis risus sed. Faucibus purus في ماسا مؤقت. ليو بقطر سوليتودين معرف مؤقت الاتحاد الأوروبي. Nisi scelerisque eu ultrices السيرة الذاتية موصل. Vulputate كريم معلق في وقت مبكر. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus Préium quam vulputate. Elit pellentesque موطن morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. sit amet mattis vulputate enim nulla. Nisi lacus sed viverra Tellus في العادة السيئة. اجلس أميت ريسوس نولام إيجيت فيليس إيجيت نونك لوبورتيز. Pretium lectus quam id leo in vitae. Adipiscing Diam donec adipiscing tristique. كومودو سيد egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing النخبة pellentesque المعيشية morbi. مونتيس ناسيتور ريديكولوس موس موريس. Ut etiam sit amet nisl purus in. Arcu ac Ornare suspendisse sed nisi lacus sed viverra.',
      'de':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis bei erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia bei quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem entero vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus en massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Cómodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
    },
    'oks4x95o': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // tutorial_PROFILE
  {
    '38wb3rix': {
      'en': 'Tutorial',
      'ar': 'درس تعليمي',
      'de': 'Lernprogramm',
      'es': 'Tutorial',
    },
    'o6prpb1q': {
      'en': 'Create Budgets',
      'ar': 'إنشاء الميزانيات',
      'de': 'Erstellen Sie Budgets',
      'es': 'Crear presupuestos',
    },
    '292pbdw7': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'ar':
          'قم بإنشاء ميزانيات يمكنك ربط المعاملات بها أيضًا من أجل التتبع السهل.',
      'de':
          'Erstellen Sie Budgets, mit denen Sie auch Transaktionen verknüpfen können, um sie einfach nachverfolgen zu können.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
    },
    'b10xvuf9': {
      'en': 'Keep Track of Spending',
      'ar': 'تتبع الإنفاق',
      'de': 'Behalten Sie die Ausgaben im Auge',
      'es': 'Mantenga un registro de los gastos',
    },
    't6k1smsm': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'ar': 'أضف المعاملات بسهولة وربطها بالميزانيات التي تم إنشاؤها.',
      'de':
          'Fügen Sie ganz einfach Transaktionen hinzu und verknüpfen Sie sie mit erstellten Budgets.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
    },
    'u8xxj427': {
      'en': 'Budget Analysis',
      'ar': 'تحليل الميزانية',
      'de': 'Budgetanalyse',
      'es': 'Análisis de presupuesto',
    },
    'iqi0pkmb': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'ar': 'تعرف على مكان ميزانياتك وكيف يمكن تعديلها.',
      'de': 'Wissen, wo Ihre Budgets sind und wie sie angepasst werden können.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
    },
    'uydm0fnm': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // maps_coletas
  {
    'n4mx0n3c': {
      'en': 'Pesquisar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nbuwyk6l': {
      'en': '➖➖',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // coletaPage
  {
    'undsszp2': {
      'en': 'Digite a quantidade aproximada de resíduos descartados',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wapf0bc1': {
      'en': 'Para menos de 1kg utilize 0.2 - 0.5',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uibefxo4': {
      'en': 'Continuar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mmxwrnwp': {
      'en': '➖➖',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // calen
  {
    'sbnys3le': {
      'en': 'Month',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pza1hfnv': {
      'en': 'Coming Up',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kwd1pzms': {
      'en': 'Doctors Check In',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ctxzw9oq': {
      'en': '2:20pm',
      'ar': '',
      'de': '',
      'es': '',
    },
    'sji56let': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qfhg8u5w': {
      'en': 'Past Due',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8kvsum3h': {
      'en': 'Check In',
      'ar': '',
      'de': '',
      'es': '',
    },
    '31pnoedj': {
      'en': '2:20pm',
      'ar': '',
      'de': '',
      'es': '',
    },
    '88racick': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f1ltr2kv': {
      'en': 'Week',
      'ar': '',
      'de': '',
      'es': '',
    },
    'b6hi1726': {
      'en': 'Coming Up',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dl26lyzt': {
      'en': 'Doctors Check In',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ecw6svxp': {
      'en': '2:20pm',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wu4vnfq5': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'apa94yey': {
      'en': 'Past Due',
      'ar': '',
      'de': '',
      'es': '',
    },
    'z930a1l1': {
      'en': 'Check In',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ffxgmlxb': {
      'en': '2:20pm',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pfjnq4vj': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    't20a0447': {
      'en': 'Calendar',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9m7y7s41': {
      'en': '1',
      'ar': '',
      'de': '',
      'es': '',
    },
    'v0001y3b': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // agendaColeta
  {
    'a56gv7h4': {
      'en': 'Agendar Coleta',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5b6j342d': {
      'en': 'MÊS',
      'ar': '',
      'de': '',
      'es': '',
    },
    'b1d2ndfo': {
      'en': 'Coletas Agendadas',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ibxz28md': {
      'en':
          'Para marcar como feita ou \ndeletar a coleta clique \nno marcador!',
      'ar': '',
      'de': '',
      'es': '',
    },
    'lgrxwraq': {
      'en': 'Descartes do Resíduos🚮',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fawd3nb5': {
      'en': 'Semana',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6z98aq0x': {
      'en': 'Coletas Agendadas',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ym08o5l1': {
      'en':
          'Para marcar como feita ou \ndeletar a coleta clique \nno marcador!',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ro7vsho3': {
      'en': 'Descartes do Resíduos🚮',
      'ar': '',
      'de': '',
      'es': '',
    },
    'o22ajaja': {
      'en': 'Nova Agenda',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zgkya3z8': {
      'en': '➖➖',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // MY_Card
  {
    'qjxmr1ed': {
      'en': 'Bem Vindo 👋',
      'ar': '',
      'de': '',
      'es': '',
    },
    'etm3bvq5': {
      'en': 'Coletas:',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ydaxsdan': {
      'en': 'Sua Pegada CO2',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x3kdnzpw': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '64fza7cq': {
      'en': 'Sobrou entulho da reforma?',
      'ar': '',
      'de': '',
      'es': '',
    },
    'c9bno7jg': {
      'en':
          'Confira qual é o descarte correto!\nClique Aqui para acessar nosso site!',
      'ar': '',
      'de': '',
      'es': '',
    },
    '74wfdzt8': {
      'en': '➖➖',
      'ar': '•',
      'de': '•',
      'es': '•',
    },
  },
  // list_Residuos
  {
    'yhokjihs': {
      'en': 'Resíduo',
      'ar': '',
      'de': '',
      'es': '',
    },
    'may9l8sj': {
      'en': 'CO2 KG',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fdjtq0j0': {
      'en': 'Papel e papelão',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xwhk8kgp': {
      'en': '0,00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'u7ksgi02': {
      'en': 'Vidro',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tkyar8v8': {
      'en': '0,00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5es0hmos': {
      'en': 'Alumínio',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fxcmdkjy': {
      'en': '0,00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '769x65jn': {
      'en': 'Outros metais',
      'ar': '',
      'de': '',
      'es': '',
    },
    'avj2hbvb': {
      'en': '0,00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'oo3kfa7p': {
      'en': 'Plástico',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5atwsos2': {
      'en': '0,00',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // ColetaPage12
  {
    'cun0s8p0': {
      'en': 'Papel e papelão',
      'ar': '',
      'de': '',
      'es': '',
    },
    '1t7w1zi6': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f4dm7lic': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'to8ou6no': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'e36qo0c5': {
      'en': 'KG',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4ckn6rbw': {
      'en': 'Vidro',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aengbb7o': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vee94a9z': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'boznrcw7': {
      'en': 'KG',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4qyrhcf1': {
      'en': 'Alumínio',
      'ar': '',
      'de': '',
      'es': '',
    },
    'e4oa3qpy': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6nfnuyt9': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w6tydhq7': {
      'en': 'KG',
      'ar': '',
      'de': '',
      'es': '',
    },
    'e8ct20fn': {
      'en': 'Outros metais',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w9pvchqs': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'eco6ax5f': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'waw8i4yl': {
      'en': 'KG',
      'ar': '',
      'de': '',
      'es': '',
    },
    'smahe0vy': {
      'en': 'Plástico',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f0va2urd': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wz54vnyt': {
      'en': '0.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '03l1cvy4': {
      'en': 'KG',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // DescriptionLocation
  {
    'w7sz7j45': {
      'en': 'Tipo de resíduo recebido:',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // novaAgenda
  {
    'cxyaij8l': {
      'en': 'Descartes do Resíduos🚮',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f5tq8zx4': {
      'en': '2:20pm',
      'ar': '',
      'de': '',
      'es': '',
    },
    'lxx4onxe': {
      'en': 'Wed, 03/08/2022',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // DeletarOuConcluir
  {
    '94ptnxjg': {
      'en': 'Concluir Coleta',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bxxwuemh': {
      'en': 'Deletar Coleta',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pbpphdwh': {
      'en': 'Voltar',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // TermoPrivacidade
  {
    'fgyh7t26': {
      'en': 'Ler Política de Privacidade',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j7s4nwy3': {
      'en': 'Concordar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'm3zsyqv3': {
      'en': 'Recusar',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': 'Permitir o serviço de camera',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kx9cdks4': {
      'en':
          'Permitir o acesso a sua galeria para fazer o upload da sua foto de perfil',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cdmzi24j': {
      'en': 'Permitir o serviço de localização',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x2z6hb8t': {
      'en': 'Permitir o serviço de calendário',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x7rt02to': {
      'en': 'Permitir o serviço de notificações',
      'ar': '',
      'de': '',
      'es': '',
    },
    'efvtwj7k': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ec5hfa1e': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q5ljwvfo': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j4rmwb3h': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ah1b18f': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2kos1hen': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '21pq7bnk': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'm6guckwa': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'v5t57ueh': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kus83ie5': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ye07wheo': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aox3s4fb': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l8hv5a7z': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4pjwb70a': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0xlokf4y': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8twlwiwt': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fnavniiw': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vkgdw70i': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'c8gkx4lr': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xwqjsarh': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j5594dh9': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '69jqauc2': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    't4xzlq9q': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '513nj4m0': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a1jxfgju': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
