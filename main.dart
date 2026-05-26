import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// ==========================================
// 1. STATE & GLOBAL LOCALIZATION SYSTEM
// ==========================================

/// Simple translation keys representing all core components of our premium social application.
class AppTranslations {
  final String appTitle;
  final String loginWithGoogle;
  final String feedTitle;
  final String searchHint;
  final String directMessages;
  final String activeNow;
  final String profileTitle;
  final String travelMemories;
  final String postsCount;
  final String followersCount;
  final String followingCount;
  final String selectLanguage;
  final String changeLanguage;
  final String writeAMessage;
  final String mediaUpload;
  final String uploadSuccess;
  final String comments;
  final String likes;
  final String homeTab;
  final String chatTab;
  final String uploadTab;
  final String profileTab;
  final String emptyChat;
  final String logout;

  AppTranslations({
    required this.appTitle,
    required this.loginWithGoogle,
    required this.feedTitle,
    required this.searchHint,
    required this.directMessages,
    required this.activeNow,
    required this.profileTitle,
    required this.travelMemories,
    required this.postsCount,
    required this.followersCount,
    required this.followingCount,
    required this.selectLanguage,
    required this.changeLanguage,
    required this.writeAMessage,
    required this.mediaUpload,
    required this.uploadSuccess,
    required this.comments,
    required this.likes,
    required this.homeTab,
    required this.chatTab,
    required this.uploadTab,
    required this.profileTab,
    required this.emptyChat,
    required this.logout,
  });

  static final Map<String, AppTranslations> _localizedValues = {
    'en': AppTranslations(
      appTitle: 'Wanderlust iOS',
      loginWithGoogle: 'Continue with Google',
      feedTitle: 'Travel Memories',
      searchHint: 'Search places, friends...',
      directMessages: 'Direct Messages',
      activeNow: 'Active Now',
      profileTitle: 'My Profile',
      travelMemories: 'Travel Memories',
      postsCount: 'Posts',
      followersCount: 'Followers',
      followingCount: 'Following',
      selectLanguage: 'Select Language',
      changeLanguage: 'Change App Language',
      writeAMessage: 'Write a message...',
      mediaUpload: 'Upload New Memory',
      uploadSuccess: 'Memory saved successfully!',
      comments: 'Comments',
      likes: 'Likes',
      homeTab: 'Home',
      chatTab: 'Inbox',
      uploadTab: 'Upload',
      profileTab: 'Profile',
      emptyChat: 'No messages yet. Start a connection!',
      logout: 'Sign Out',
    ),
    'ar': AppTranslations(
      appTitle: 'واندرلاست iOS',
      loginWithGoogle: 'متابعة باستخدام Google',
      feedTitle: 'ذكريات السفر',
      searchHint: 'ابحث عن أماكن، أصدقاء...',
      directMessages: 'الرسائل المباشرة',
      activeNow: 'نشط الآن',
      profileTitle: 'ملفي الشخصي',
      travelMemories: 'ذكريات السفر',
      postsCount: 'منشورات',
      followersCount: 'متابعون',
      followingCount: 'يتابع',
      selectLanguage: 'اختر اللغة',
      changeLanguage: 'تغيير لغة التطبيق',
      writeAMessage: 'اكتب رسالة...',
      mediaUpload: 'رفع ذكرى جديدة',
      uploadSuccess: 'تم حفظ الذكرى بنجاح!',
      comments: 'التعليقات',
      likes: 'الإعجابات',
      homeTab: 'الرئيسية',
      chatTab: 'البريد الوارد',
      uploadTab: 'تحميل',
      profileTab: 'حسابي',
      emptyChat: 'لا توجد رسائل بعد. ابدأ التواصل الآن!',
      logout: 'تسجيل الخروج',
    ),
    'es': AppTranslations(
      appTitle: 'Wanderlust iOS',
      loginWithGoogle: 'Continuar con Google',
      feedTitle: 'Recuerdos de Viaje',
      searchHint: 'Buscar lugares, amigos...',
      directMessages: 'Mensajes Directos',
      activeNow: 'Activo ahora',
      profileTitle: 'Mi Perfil',
      travelMemories: 'Recuerdos de Viaje',
      postsCount: 'Publicaciones',
      followersCount: 'Seguidores',
      followingCount: 'Seguidos',
      selectLanguage: 'Seleccionar idioma',
      changeLanguage: 'Cambiar idioma de la aplicación',
      writeAMessage: 'Escribe un mensaje...',
      mediaUpload: 'Subir nuevo recuerdo',
      uploadSuccess: '¡Recuerdo guardado con éxito!',
      comments: 'Comentarios',
      likes: 'Me gusta',
      homeTab: 'Inicio',
      chatTab: 'Bandeja',
      uploadTab: 'Subir',
      profileTab: 'Perfil',
      emptyChat: 'No hay mensajes aún. ¡Inicia una conversación!',
      logout: 'Cerrar sesión',
    ),
    'fr': AppTranslations(
      appTitle: 'Wanderlust iOS',
      loginWithGoogle: 'Continuer avec Google',
      feedTitle: 'Souvenirs de Voyage',
      searchHint: 'Rechercher des lieux, des amis...',
      directMessages: 'Messages Directs',
      activeNow: 'En ligne',
      profileTitle: 'Mon Profil',
      travelMemories: 'Souvenirs de Voyage',
      postsCount: 'Publications',
      followersCount: 'Abonnés',
      followingCount: 'Abonnements',
      selectLanguage: 'Choisir la langue',
      changeLanguage: 'Changer la langue de l\'application',
      writeAMessage: 'Écrire un message...',
      mediaUpload: 'Télécharger un souvenir',
      uploadSuccess: 'Souvenir enregistré avec succès!',
      comments: 'Commentaires',
      likes: 'J\'aime',
      homeTab: 'Accueil',
      chatTab: 'Messagerie',
      uploadTab: 'Publier',
      profileTab: 'Profil',
      emptyChat: 'Aucun message pour l\'instant. Commencez la discussion !',
      logout: 'Se déconnecter',
    ),
  };

  static AppTranslations of(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return _localizedValues[locale] ?? _localizedValues['en']!;
  }
}

// Global state provider for simplified runtime management
class AppStateNotifier extends ChangeNotifier {
  Locale _locale = const Locale('en');
  bool _isAuthenticated = false;
  String _userName = 'Alex Mercer';
  String _userAvatar = 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=300&q=80';

  Locale get locale => _locale;
  bool get isAuthenticated => _isAuthenticated;
  String get userName => _userName;
  String get userAvatar => _userAvatar;

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }

  void login() {
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}

final AppStateNotifier globalAppState = AppStateNotifier();

void main() {
  runApp(const PremiumWanderlustApp());
}

class PremiumWanderlustApp extends StatefulWidget {
  const PremiumWanderlustApp({Key? key}) : super(key: key);

  @override
  State<PremiumWanderlustApp> createState() => _PremiumWanderlustAppState();
}

class _PremiumWanderlustAppState extends State<PremiumWanderlustApp> {
  @override
  void initState() {
    super.initState();
    globalAppState.addListener(_onStateChange);
  }

  void _onStateChange() {
    setState(() {});
  }

  @override
  void dispose() {
    globalAppState.removeListener(_onStateChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wanderlust iOS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'SF Pro Display',
        primaryColor: Colors.black,
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.blueAccent,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'SF Pro Display',
        primaryColor: Colors.white,
        colorScheme: const ColorScheme.dark(
          primary: Colors.white,
          secondary: Colors.blueAccent,
        ),
      ),
      themeMode: ThemeMode.system,
      locale: globalAppState.locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
        Locale('es', ''),
        Locale('fr', ''),
      ],
      home: globalAppState.isAuthenticated
          ? const MainNavigationShell()
          : const PremiumLoginScreen(),
    );
  }
}

// ==========================================
// 2. PREMIUM INSTAGRAM-STYLE LOGIN
// ==========================================

class PremiumLoginScreen extends StatefulWidget {
  const PremiumLoginScreen({Key? key}) : super(key: key);

  @override
  State<PremiumLoginScreen> createState() => _PremiumLoginScreenState();
}

class _PremiumLoginScreenState extends State<PremiumLoginScreen> {
  bool _isLoading = false;

  void _handleGoogleLogin() {
    setState(() => _isLoading = true);
    // Simulate iOS platform-appropriate Google Auth Handshake delay
    Future.delayed(const Duration(milliseconds: 1200), () {
      if (mounted) {
        setState(() => _isLoading = false);
        globalAppState.login();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(
        children: [
          // Elegant abstract ambient background representing luxury travelers
          Positioned.fill(
            child: Opacity(
              opacity: isDark ? 0.25 : 0.65,
              child: Image.network(
                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1200&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    isDark ? Colors.black.withOpacity(0.9) : Colors.white.withOpacity(0.85),
                    isDark ? Colors.black.withOpacity(0.4) : Colors.white.withOpacity(0.3),
                    isDark ? Colors.black : Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Visual header with Language Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: isDark ? Colors.white10 : Colors.black12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          globalAppState.locale.languageCode.toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Brand Centerpiece
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Modern travel ring logomark
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [Color(0xFFE1306C), Color(0xFFC13584), Color(0xFF833AB4)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFC13584).withOpacity(0.4),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            )
                          ],
                        ),
                        child: const Icon(
                          CupertinoIcons.compass,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        translations.appTitle,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.8,
                          fontFamily: 'Georgia',
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Premium Moments Shared Beautifully',
                        style: TextStyle(
                          color: isDark ? Colors.white60 : Colors.black54,
                          fontSize: 14,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),

                  // OAuth Action Block
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_isLoading)
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CupertinoActivityIndicator(radius: 12),
                        )
                      else
                        GestureDetector(
                          onTap: _handleGoogleLogin,
                          child: Container(
                            width: double.infinity,
                            height: 54,
                            decoration: BoxDecoration(
                              color: isDark ? Colors.white : Colors.black,
                              borderRadius: BorderRadius.circular(27),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://images.unsplash.com/photo-1573804633927-bfcbcd909acd?auto=format&fit=crop&w=40&q=80',
                                  height: 20,
                                  width: 20,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(CupertinoIcons.globe, color: Colors.blueAccent),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  translations.loginWithGoogle,
                                  style: TextStyle(
                                    color: isDark ? Colors.black : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      const SizedBox(height: 16),
                      Text(
                        'By signing in you agree to our Travel TOS and Privacy Policy.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          color: isDark ? Colors.white30 : Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 3. MAIN TABBED NAVIGATION SHELL
// ==========================================

class MainNavigationShell extends StatefulWidget {
  const MainNavigationShell({Key? key}) : super(key: key);

  @override
  State<MainNavigationShell> createState() => _MainNavigationShellState();
}

class _MainNavigationShellState extends State<MainNavigationShell> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const TravelFeedScreen(),
    const RealtimeInboxScreen(),
    const QuickUploadScreen(),
    const TravelProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // We build custom iOS-style BottomNavigationBar that automatically flips layout direction
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _tabs,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isDark ? Colors.white10 : Colors.black12,
              width: 0.5,
            ),
          ),
        ),
        child: CupertinoTabBar(
          backgroundColor: isDark ? Colors.black : Colors.white,
          activeColor: isDark ? Colors.white : Colors.black,
          inactiveColor: isDark ? Colors.white38 : Colors.black38,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.compass),
              activeIcon: const Icon(CupertinoIcons.compass_fill),
              label: translations.homeTab,
            ),
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.paperplane),
              activeIcon: const Icon(CupertinoIcons.paperplane_fill),
              label: translations.chatTab,
            ),
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.plus_square),
              activeIcon: const Icon(CupertinoIcons.plus_square_fill),
              label: translations.uploadTab,
            ),
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.person),
              activeIcon: const Icon(CupertinoIcons.person_fill),
              label: translations.profileTab,
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// 4. INFINITE SCROLLING TRAVEL FEED
// ==========================================

class TravelFeedScreen extends StatefulWidget {
  const TravelFeedScreen({Key? key}) : super(key: key);

  @override
  State<TravelFeedScreen> createState() => _TravelFeedScreenState();
}

class _TravelFeedScreenState extends State<TravelFeedScreen> {
  final List<Map<String, dynamic>> _posts = [
    {
      'id': '1',
      'username': 'Elena Petrova',
      'avatar': 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=150&q=80',
      'location': 'Santorini, Greece',
      'mediaUrl': 'https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=600&q=80',
      'likes': 1240,
      'caption': 'Sunset over the Aegean Sea. Breathtaking blue domes that feel out of this world! 🌊 #travel #wanderlust',
      'commentsCount': 34,
      'isLiked': false,
    },
    {
      'id': '2',
      'username': 'Kenji Sato',
      'avatar': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=150&q=80',
      'location': 'Kyoto, Japan',
      'mediaUrl': 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?auto=format&fit=crop&w=600&q=80',
      'likes': 982,
      'caption': 'Strolling around Arashiyama bamboo path early morning. Silence speaks volumes.',
      'commentsCount': 19,
      'isLiked': true,
    },
    {
      'id': '3',
      'username': 'Sofia Al-Mansoor',
      'avatar': 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=150&q=80',
      'location': 'Petra, Jordan',
      'mediaUrl': 'https://images.unsplash.com/photo-1541432901042-2d8bd64b4a9b?auto=format&fit=crop&w=600&q=80',
      'likes': 2341,
      'caption': 'Marveling at the ancient architecture carved from solid stone. Absolute genius.',
      'commentsCount': 88,
      'isLiked': false,
    }
  ];

  final ScrollController _scrollController = ScrollController();
  bool _isFetchingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
        _fetchMoreMockMemories();
      }
    });
  }

  void _fetchMoreMockMemories() {
    if (_isFetchingMore) return;
    setState(() => _isFetchingMore = true);

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _posts.add({
            'id': DateTime.now().millisecondsSinceEpoch.toString(),
            'username': 'Michael Chang',
            'avatar': 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=150&q=80',
            'location': 'Swiss Alps',
            'mediaUrl': 'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=600&q=80',
            'likes': 1490,
            'caption': 'Up in the thin mountain air! Nothing compares to winter freshness.',
            'commentsCount': 42,
            'isLiked': false,
          });
          _isFetchingMore = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: isDark ? Colors.white10 : Colors.black12, width: 0.5),
            ),
          ),
          child: AppBar(
            backgroundColor: isDark ? Colors.black : Colors.white,
            elevation: 0,
            centerTitle: false,
            title: Text(
              translations.feedTitle,
              style: TextStyle(
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(CupertinoIcons.camera),
                color: isDark ? Colors.white : Colors.black,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          setState(() {
            _posts.shuffle();
          });
        },
        color: Colors.black,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _posts.length + (_isFetchingMore ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == _posts.length) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0),
                child: Center(child: CupertinoActivityIndicator(radius: 12)),
              );
            }

            final post = _posts[index];
            return TravelFeedCard(post: post);
          },
        ),
      ),
    );
  }
}

class TravelFeedCard extends StatefulWidget {
  final Map<String, dynamic> post;
  const TravelFeedCard({Key? key, required this.post}) : super(key: key);

  @override
  State<TravelFeedCard> createState() => _TravelFeedCardState();
}

class _TravelFeedCardState extends State<TravelFeedCard> {
  bool _isDoubleTapHeartAnimating = false;

  void _likePost() {
    setState(() {
      widget.post['isLiked'] = !widget.post['isLiked'];
      if (widget.post['isLiked']) {
        widget.post['likes']++;
      } else {
        widget.post['likes']--;
      }
    });
  }

  void _triggerDoubleTapLike() {
    if (!widget.post['isLiked']) {
      _likePost();
    }
    setState(() {
      _isDoubleTapHeartAnimating = true;
    });
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) {
        setState(() {
          _isDoubleTapHeartAnimating = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isLiked = widget.post['isLiked'] as bool;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Author Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.post['avatar']),
                  radius: 18,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post['username'],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        widget.post['location'],
                        style: TextStyle(color: isDark ? Colors.white60 : Colors.black54, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.ellipsis),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // Main Interactive Media Grid Image
          GestureDetector(
            onDoubleTap: _triggerDoubleTapLike,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    widget.post['mediaUrl'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                if (_isDoubleTapHeartAnimating)
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: _isDoubleTapHeartAnimating ? 1.0 : 0.0,
                    child: const Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.white,
                      size: 90,
                    ),
                  ),
              ],
            ),
          ),

          // Action Toolbar (Likes, Comments, Share)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                        color: isLiked ? Colors.red : (isDark ? Colors.white : Colors.black),
                      ),
                      onPressed: _likePost,
                    ),
                    IconButton(
                      icon: const Icon(CupertinoIcons.chat_bubble),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(CupertinoIcons.paperplane),
                      onPressed: () {},
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.bookmark),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // Post Description Text Fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.post['likes']} ${translations.likes}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: isDark ? Colors.white : Colors.black, fontSize: 14),
                    children: [
                      TextSpan(
                        text: '${widget.post['username']} ',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: widget.post['caption']),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'View all ${widget.post['commentsCount']} ${translations.comments}',
                  style: TextStyle(color: isDark ? Colors.white30 : Colors.black38, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==========================================
// 5. REAL-TIME CHAT INTERACTION MODULE
// ==========================================

class RealtimeInboxScreen extends StatefulWidget {
  const RealtimeInboxScreen({Key? key}) : super(key: key);

  @override
  State<RealtimeInboxScreen> createState() => _RealtimeInboxScreenState();
}

class _RealtimeInboxScreenState extends State<RealtimeInboxScreen> {
  final List<Map<String, dynamic>> _threads = [
    {
      'id': '1',
      'name': 'Elena Petrova',
      'avatar': 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=150&q=80',
      'lastMessage': 'Loved your Swiss Alps snaps!',
      'time': '2m ago',
      'isOnline': true,
      'unread': true,
    },
    {
      'id': '2',
      'name': 'Kenji Sato',
      'avatar': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=150&q=80',
      'lastMessage': 'Meet up in Kyoto next spring?',
      'time': '1h ago',
      'isOnline': false,
      'unread': false,
    },
    {
      'id': '3',
      'name': 'Sofia Al-Mansoor',
      'avatar': 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=150&q=80',
      'lastMessage': 'Sent a photo of Petra at night',
      'time': 'Yesterday',
      'isOnline': true,
      'unread': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: isDark ? Colors.white10 : Colors.black12, width: 0.5),
            ),
          ),
          child: AppBar(
            backgroundColor: isDark ? Colors.black : Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              translations.directMessages,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(CupertinoIcons.chat_bubble_text),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Active Now Section Carousel (Insta design requirement)
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 8.0),
            child: Text(
              translations.activeNow,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, letterSpacing: 0.5),
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: _threads.length,
              itemBuilder: (context, index) {
                final thread = _threads[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(thread['avatar']),
                            radius: 26,
                          ),
                          if (thread['isOnline'])
                            Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: isDark ? Colors.black : Colors.white, width: 2),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        thread['name'].split(' ')[0],
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(color: isDark ? Colors.white10 : Colors.black12),

          // Message Thread List
          Expanded(
            child: ListView.builder(
              itemCount: _threads.length,
              itemBuilder: (context, index) {
                final thread = _threads[index];
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => TravelChatConversationScreen(thread: thread),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(thread['avatar']),
                    radius: 24,
                  ),
                  title: Text(
                    thread['name'],
                    style: TextStyle(
                      fontWeight: thread['unread'] ? FontWeight.bold : FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    thread['lastMessage'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: thread['unread'] ? FontWeight.w600 : FontWeight.normal,
                      color: thread['unread']
                          ? (isDark ? Colors.white : Colors.black)
                          : (isDark ? Colors.white60 : Colors.black54),
                      fontSize: 13,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        thread['time'],
                        style: TextStyle(color: isDark ? Colors.white30 : Colors.black38, fontSize: 11),
                      ),
                      if (thread['unread'])
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Interactive chat window
class TravelChatConversationScreen extends StatefulWidget {
  final Map<String, dynamic> thread;
  const TravelChatConversationScreen({Key? key, required this.thread}) : super(key: key);

  @override
  State<TravelChatConversationScreen> createState() => _TravelChatConversationScreenState();
}

class _TravelChatConversationScreenState extends State<TravelChatConversationScreen> {
  final List<Map<String, dynamic>> _messages = [
    {'sender': 'them', 'text': 'Hey there! How is your trip going?'},
    {'sender': 'me', 'text': 'Hi! Absolutely phenomenal. Exploring beautiful vistas!'},
  ];
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;
    setState(() {
      _messages.add({
        'sender': 'me',
        'text': _messageController.text,
      });
      _messageController.clear();
    });

    // Simulate real-time mock chat backend responder
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _messages.add({
            'sender': 'them',
            'text': 'That sounds extremely exciting! Safe travels! 🙌',
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: isDark ? Colors.black : Colors.white,
        middle: Text(
          widget.thread['name'],
          style: TextStyle(color: isDark ? Colors.white : Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  final isMe = msg['sender'] == 'me';

                  return Align(
                    alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: isMe
                            ? Colors.blueAccent
                            : (isDark ? Colors.white10 : Colors.black12),
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(18),
                          topRight: const Radius.circular(18),
                          bottomLeft: isMe ? const Radius.circular(18) : Radius.zero,
                          bottomRight: isMe ? Radius.zero : const Radius.circular(18),
                        ),
                      ),
                      child: Text(
                        msg['text'],
                        style: TextStyle(
                          color: isMe ? Colors.white : (isDark ? Colors.white90 : Colors.black87),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Message Sending Panel
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: isDark ? Colors.white10 : Colors.black12)),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(CupertinoIcons.photo),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: CupertinoTextField(
                      controller: _messageController,
                      placeholder: translations.writeAMessage,
                      placeholderStyle: TextStyle(color: isDark ? Colors.white30 : Colors.black38),
                      style: TextStyle(color: isDark ? Colors.white : Colors.black),
                      decoration: BoxDecoration(
                        color: isDark ? Colors.white10 : Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(CupertinoIcons.paperplane_fill, color: Colors.blueAccent),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// 6. QUICK UPLOAD SCREEN (MOCK SECURE STORAGE)
// ==========================================

class QuickUploadScreen extends StatefulWidget {
  const QuickUploadScreen({Key? key}) : super(key: key);

  @override
  State<QuickUploadScreen> createState() => _QuickUploadScreenState();
}

class _QuickUploadScreenState extends State<QuickUploadScreen> {
  final TextEditingController _captionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  bool _isUploading = false;

  void _handleUpload() {
    if (_captionController.text.trim().isEmpty) return;

    setState(() => _isUploading = true);
    // Simulate secure cloud upload with infinite capacity
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() => _isUploading = false);
        _captionController.clear();
        _locationController.clear();

        // High quality native iOS style modal
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text('Wanderlust Cloud'),
            content: Text(AppTranslations.of(context).uploadSuccess),
            actions: [
              CupertinoDialogAction(
                child: const Text('OK'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: isDark ? Colors.black : Colors.white,
        middle: Text(
          translations.mediaUpload,
          style: TextStyle(color: isDark ? Colors.white : Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Dummy image representing local storage file picked by camera
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1501854140801-50d01698950b?auto=format&fit=crop&w=600&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(color: Colors.black54, shape: BoxShape.circle),
                child: const Icon(CupertinoIcons.camera_rotate, color: Colors.white, size: 20),
              ),
            ),
            const SizedBox(height: 20),

            // Caption Text Input
            CupertinoTextField(
              controller: _captionController,
              placeholder: 'Add description...',
              maxLines: 4,
              padding: const EdgeInsets.all(16),
              style: TextStyle(color: isDark ? Colors.white : Colors.black),
              decoration: BoxDecoration(
                color: isDark ? Colors.white10 : Colors.black12,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 12),

            // Location Text Input
            CupertinoTextField(
              controller: _locationController,
              placeholder: 'Add Location (e.g. Rome, Italy)',
              padding: const EdgeInsets.all(16),
              style: TextStyle(color: isDark ? Colors.white : Colors.black),
              decoration: BoxDecoration(
                color: isDark ? Colors.white10 : Colors.black12,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 30),

            if (_isUploading)
              const CupertinoActivityIndicator(radius: 14)
            else
              GestureDetector(
                onTap: _handleUpload,
                child: Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Share Memory',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// 7. TRAVEL PROFILE & LANGUAGE SWITCHER
// ==========================================

class TravelProfileScreen extends StatelessWidget {
  const TravelProfileScreen({Key? key}) : super(key: key);

  void _showLanguageSwitcher(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: Text(translations.selectLanguage),
        message: Text(translations.changeLanguage),
        actions: [
          CupertinoActionSheetAction(
            child: const Text('English (US)'),
            onPressed: () {
              globalAppState.setLocale(const Locale('en'));
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('العربية (Arabic)'),
            onPressed: () {
              globalAppState.setLocale(const Locale('ar'));
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Español (Spanish)'),
            onPressed: () {
              globalAppState.setLocale(const Locale('es'));
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Français (French)'),
            onPressed: () {
              globalAppState.setLocale(const Locale('fr'));
              Navigator.pop(context);
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final translations = AppTranslations.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final List<String> myMockPosts = [
      'https://images.unsplash.com/photo-1516483638261-f4dbaf036963?auto=format&fit=crop&w=300&q=80',
      'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?auto=format&fit=crop&w=300&q=80',
      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=300&q=80',
      'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?auto=format&fit=crop&w=300&q=80',
      'https://images.unsplash.com/photo-1472214222541-d510753a4907?auto=format&fit=crop&w=300&q=80',
      'https://images.unsplash.com/photo-1433832597026-6073dacd612b?auto=format&fit=crop&w=300&q=80',
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: isDark ? Colors.white10 : Colors.black12, width: 0.5),
            ),
          ),
          child: AppBar(
            backgroundColor: isDark ? Colors.black : Colors.white,
            elevation: 0,
            title: Text(
              translations.profileTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(CupertinoIcons.globe),
                color: isDark ? Colors.white : Colors.black,
                onPressed: () => _showLanguageSwitcher(context),
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.power),
                color: Colors.redAccent,
                onPressed: () => globalAppState.logout(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Avatar and Stats
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(globalAppState.userAvatar),
                    radius: 40,
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatColumn('18', translations.postsCount),
                        _buildStatColumn('2.5k', translations.followersCount),
                        _buildStatColumn('482', translations.followingCount),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Profile Info Detail Box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      globalAppState.userName,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Luxury travel videographer & writer.\nBased in Geneva / Dubai ✈️',
                      style: TextStyle(color: isDark ? Colors.white70 : Colors.black87, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Change Language Action Trigger Box (Easy switcher inside profile)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () => _showLanguageSwitcher(context),
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.white10 : Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    translations.changeLanguage,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Interactive Travel Memory Grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: myMockPosts.length,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    myMockPosts[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
