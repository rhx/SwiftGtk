#ifdef __linux__
#include <sys/types.h>
#include <utime.h>
extern int g_open (const char *, int, ...) __nonnull ((1));
#endif
#define __GLIB_H_INSIDE__
#include <glib/gversion.h>
#include <glib/gversionmacros.h>
#undef __GLIB_H_INSIDE__

struct _GAllocator {};
struct _GAsyncQueue {};
struct _GBookmarkFile {};
struct _GBinding {};
struct _GBytes {};
struct _GCache {};
struct _GChecksum {};
struct _GData {};
struct _GDatagramBased {};
struct _GDateTime {};
struct _GDebugController {};
struct _GDir {};
struct _GHashTable {};
struct _GHmac {};
struct _GKeyFile {};
struct _GMainContext {};
struct _GMainLoop {};
struct _GMappedFile {};
struct _GMarkupParseContext {};
struct _GMatchInfo {};
struct _GMemChunk {};
struct _GMemoryMonitor {};
struct _GModule {};
struct _GMutexLocker {};
struct _GOptionContext {};
struct _GOptionGroup {};
struct _GParamSpecPool {};
struct _GPatternSpec {};
struct _GPowerProfileMonitor {};
struct _GRand {};
struct _GRegex {};
struct _GRelation {};
struct _GSequence {};
struct _GSequenceNode {};
struct _GSequenceIter {};
struct _GSignalGroup {};
struct _GSourcePrivate {};
struct _GStringChunk {};
struct _GTestCase {};
struct _GTestSuite {};
struct _GTimeZone {};
struct _GTimer {};
struct _GTree {};
struct _GTypePlugin {};
struct _GUnixConnectionPrivate {};
struct _GUnixCredentialsMessagePrivate {};
struct _GUnixFDListPrivate {};
struct _GUnixFDMessagePrivate {};
struct _GUnixInputStreamPrivate {};
struct _GUnixOutputStreamPrivate {};
struct _GUnixSocketAddressPrivate {};
struct _GUri {};
struct _GVariant {};
struct _GVariantType {};
struct GMainContextPusher {};
struct GMutexLocker {};
struct GTestCase {};
struct GTestSuite {};

struct _GAction {};
struct _GActionGroup {};
struct _GActionMap {};
struct _GAppInfo {};
struct _GAppInfoMonitor {};
struct _GAppLaunchContextPrivate {};
struct _GApplicationCommandLinePrivate {};
struct _GApplicationPrivate {};
struct _GAsyncInitable {};
struct _GAsyncResult {};
struct _GBindingGroup {};
struct _GBufferedInputStreamPrivate {};
struct _GBufferedOutputStreamPrivate {};
struct _GBytesIcon {};
struct _GCancellablePrivate {};
struct _GCharsetConverter {};
struct _GConverter {};
struct _GConverterInputStreamPrivate {};
struct _GConverterOutputStreamPrivate {};
struct _GCredentials {};
struct _GCredentialsClass {};
struct _GDBusActionGroup {};
struct _GDBusAuthObserver {};
struct _GDBusConnection {};
struct _GDBusInterface {};
struct _GDBusInterfaceSkeletonPrivate {};
struct _GDBusMenuModel {};
struct _GDBusMessage {};
struct _GDBusMethodInvocation {};
struct _GDBusObject {};
struct _GDBusObjectManager {};
struct _GDBusObjectManagerClientPrivate {};
struct _GDBusObjectManagerServerPrivate {};
struct _GDBusObjectProxyPrivate {};
struct _GDBusObjectSkeletonPrivate {};
struct _GDBusProxyPrivate {};
struct _GDBusServer {};
struct _GDataInputStreamPrivate {};
struct _GDataOutputStreamPrivate {};
struct _GDesktopAppInfo {};
struct _GDesktopAppInfoLookup {};
struct _GDesktopAppLaunchCallback {};
struct _GDrive {};
struct _GEmblem {};
struct _GEmblemClass {};
struct _GEmblemedIconPrivate {};
struct _GFile {};
struct _GFileAttributeMatcher {};
struct _GFileDescriptorBased {};
struct _GFileEnumeratorPrivate {};
struct _GFileIOStreamPrivate {};
struct _GFileIcon {};
struct _GFileIconClass {};
struct _GFileInfo {};
struct _GFileInfoClass {};
struct _GFileInputStreamPrivate {};
struct _GFileMonitorPrivate {};
struct _GFileOutputStreamPrivate {};
struct _GFilenameCompleter {};
struct _GIOExtension {};
struct _GIOExtensionPoint {};
struct _GIOModule {};
struct _GIOModuleClass {};
struct _GIOModuleScope {};
struct _GIOSchedulerJob {};
struct _GIOStreamAdapter {};
struct _GIOStreamPrivate {};
struct _GIConv {};
struct _GIcon {};
struct _GInetAddressMaskPrivate {};
struct _GInetAddressPrivate {};
struct _GInetSocketAddressPrivate {};
struct _GInitable {};
struct _GInputStreamPrivate {};
struct _GListModel {};
struct _GListStore {};
struct _GLoadableIcon {};
struct _GMemoryInputStreamPrivate {};
struct _GMemoryOutputStreamPrivate {};
struct _GMenu {};
struct _GMenuAttributeIterPrivate {};
struct _GMenuItem {};
struct _GMenuLinkIterPrivate {};
struct _GMenuModelPrivate {};
struct _GMount {};
struct _GMountOperationPrivate {};
#if GLIB_MAJOR_VERSION == 2 && GLIB_MINOR_VERSION < 62
struct _GNativeSocketAddress {};
typedef struct _GNativeSocketAddress GNativeSocketAddress;
#else
struct _GNativeSocketAddressPrivate {};
typedef struct _GNativeSocketAddressClass GNativeSocketAddressClass;
typedef struct _GNativeSocketAddressPrivate GNativeSocketAddressPrivate;
#endif
struct _GNetworkAddressPrivate {};
struct _GNetworkMonitor {};
struct _GNetworkServicePrivate {};
struct _GNotification {};
struct _GOsxAppInfo {};
struct _GOutputStreamPrivate {};
struct _GPermissionPrivate {};
struct _GPollableInputStream {};
struct _GPollableOutputStream {};
struct _GPropertyAction {};
struct _GProxy {};
struct _GProxyAddressEnumeratorPrivate {};
struct _GProxyAddressPrivate {};
struct _GProxyResolver {};
struct _GRemoteActionGroup {};
struct _GResolverPrivate {};
struct _GResource {};
struct _GSeekable {};
struct _GSettingsBackendPrivate {};
struct _GSettingsPrivate {};
struct _GSettingsSchema {};
struct _GSettingsSchemaKey {};
struct _GSettingsSchemaSource {};
struct _GSimpleAction {};
struct _GSimpleActionGroupPrivate {};
struct _GSimpleAsyncResult {};
struct _GSimpleAsyncResultClass {};
struct _GSimpleIOStream {};
struct _GSimplePermission {};
struct _GSimpleProxyResolverPrivate {};
struct _GSocketClientPrivate {};
struct _GSocketConnectable {};
struct _GSocketConnectionPrivate {};
struct _GSocketControlMessagePrivate {};
struct _GSocketListenerPrivate {};
struct _GSocketPrivate {};
struct _GSocketServicePrivate {};
struct _GSrvTarget {};
struct _GSubprocess {};
struct _GSubprocessLauncher {};
struct _GTask {};
struct _GTaskClass {};
struct _GTcpConnectionPrivate {};
struct _GTcpWrapperConnectionPrivate {};
struct _GTestDBus {};
struct _GThemedIcon {};
struct _GThemedIconClass {};
struct _GThreadedSocketServicePrivate {};
struct _GTlsBackend {};
struct _GTlsCertificatePrivate {};
struct _GTlsClientConnection {};
struct _GTlsConnectionPrivate {};
struct _GTlsDatabasePrivate {};
struct _GTlsFileDatabase {};
struct _GTlsInteractionPrivate {};
struct _GTlsPasswordPrivate {};
struct _GTlsServerConnection {};
struct _GUnixMountEntry {};
struct _GUnixMountMonitor {};
struct _GUnixMountMonitorClass {};
struct _GUnixMountPoint {};
struct _GVolume {};
struct _GZlibCompressor {};
struct _GZlibDecompressor {};

struct _GDtlsClientConnection {};
struct _GDtlsConnection {};
struct _GDtlsServerConnection {};

struct _GTreeNode {};
struct _GStrvBuilder {};

#define GLIB_DISABLE_DEPRECATION_WARNINGS
#define G_SETTINGS_ENABLE_BACKEND
#include <unistd.h>
#include <termios.h>
#include <sys/types.h>
#include <pwd.h>
#include <glib-unix.h>
#include <glib-object.h>
#include <gobject/gvaluecollector.h>
#include <gmodule.h>
#include <glib/gstdio.h>
#include <glib/garray.h>
#include <glib/gasyncqueue.h>
#include <glib/gbookmarkfile.h>
#include <glib/gchecksum.h>
#include <glib/gdataset.h>
#include <glib/gdatetime.h>
#include <glib/gdir.h>
#include <glib/ghash.h>
#include <glib/ghmac.h>
#include <glib/gkeyfile.h>
#include <glib/gmain.h>
#include <glib/gmappedfile.h>
#include <glib/gmarkup.h>
#include <glib/gregex.h>
#include <glib/gthread.h>
#include <glib/goption.h>
#include <glib/gpattern.h>
#include <glib/grand.h>
#include <glib/gsequence.h>
#include <glib/gstringchunk.h>
#include <glib/gtestutils.h>
#include <glib/gtimezone.h>
#include <glib/gtimer.h>
#include <glib/gtree.h>
#if GLIB_MAJOR_VERSION == 2 && GLIB_MINOR_VERSION >= 66
#include <glib/guri.h>
#else
struct _GUriParamsIter {};
typedef struct _GUriParamsIter GUriParamsIter;
typedef enum {
    G_URI_ERROR_FAILED,
    G_URI_ERROR_BAD_SCHEME,
    G_URI_ERROR_BAD_USER,
    G_URI_ERROR_BAD_PASSWORD,
    G_URI_ERROR_BAD_AUTH_PARAMS,
    G_URI_ERROR_BAD_HOST,
    G_URI_ERROR_BAD_PORT,
    G_URI_ERROR_BAD_PATH,
    G_URI_ERROR_BAD_QUERY,
    G_URI_ERROR_BAD_FRAGMENT,
} GUriError;
typedef enum {
    G_URI_FLAGS_NONE            = 0,
    G_URI_FLAGS_PARSE_RELAXED   = 1 << 0,
    G_URI_FLAGS_HAS_PASSWORD    = 1 << 1,
    G_URI_FLAGS_HAS_AUTH_PARAMS = 1 << 2,
    G_URI_FLAGS_ENCODED         = 1 << 3,
    G_URI_FLAGS_NON_DNS         = 1 << 4,
    G_URI_FLAGS_ENCODED_QUERY   = 1 << 5,
    G_URI_FLAGS_ENCODED_PATH    = 1 << 6,
    G_URI_FLAGS_ENCODED_FRAGMENT = 1 << 7,
} GUriFlags;
typedef enum {
    G_URI_PARAMS_NONE             = 0,
    G_URI_PARAMS_CASE_INSENSITIVE = 1 << 0,
    G_URI_PARAMS_WWW_FORM         = 1 << 1,
    G_URI_PARAMS_PARSE_RELAXED    = 1 << 2,
} GUriParamsFlags;
typedef enum {
    G_URI_HIDE_NONE        = 0,
    G_URI_HIDE_USERINFO    = 1 << 0,
    G_URI_HIDE_PASSWORD    = 1 << 1,
    G_URI_HIDE_AUTH_PARAMS = 1 << 2,
    G_URI_HIDE_QUERY       = 1 << 3,
    G_URI_HIDE_FRAGMENT    = 1 << 4,
} GUriHideFlags;
#endif
#include <glib/gvariant.h>
#include <glib/gvarianttype.h>
#include <gio/gio.h>
#include <gio/gnetworking.h>
#if !defined(__APPLE__) || (GLIB_MAJOR_VERSION == 2 && GLIB_MINOR_VERSION < 60)
#include <gio/gdesktopappinfo.h>
#else
#include <gio/gioenums.h>
# ifdef __APPLE__
#include <gio/gosxappinfo.h>
# endif
#endif
#include <gio/gfiledescriptorbased.h>
#include <gio/gunixconnection.h>
#include <gio/gunixcredentialsmessage.h>
#include <gio/gunixfdlist.h>
#include <gio/gunixfdmessage.h>
#include <gio/gunixinputstream.h>
#include <gio/gunixmounts.h>
#include <gio/gunixoutputstream.h>
#include <gio/gunixsocketaddress.h>
#include <gio/gsettingsbackend.h>

#ifndef G_VALUE_INTERNED_STRING
#define G_VALUE_INTERNED_STRING (1 << 28)
#endif

typedef void (*GObjectNotifyQueueDispatcher) (GObject *object, guint n_pspecs, GParamSpec **pspecs);

typedef struct _GObjectNotifyContext
{
    GQuark                       quark_notify_queue;
    GObjectNotifyQueueDispatcher dispatcher;
    GTrashStack                 *_nqueue_trash; /* unused */
} GObjectNotifyContext;

typedef struct _GObjectNotifyQueue
{
    GObjectNotifyContext *context;
    GSList               *pspecs;
    guint16               n_pspecs;
    guint16               freeze_count;
} GObjectNotifyQueue;

#ifndef __G_DESKTOP_APP_INFO_H__
struct _GDesktopAppInfoClass {};
typedef struct _GDesktopAppInfo        GDesktopAppInfo;
typedef struct _GDesktopAppInfoClass   GDesktopAppInfoClass;
typedef void (*GDesktopAppLaunchCallback) (GDesktopAppInfo  *appinfo,
                                           GPid              pid,
                                           gpointer          user_data);
#endif
#ifndef G_VA_COPY_AS_ARRAY
#define G_VA_COPY_AS_ARRAY 1
#endif
//
// Type aliases for idiomatic Swift
//
typedef struct _GUri GURI;
typedef struct _GUriParamsIter GURIParamsIter;
typedef GUriError GURIError;
typedef GUriFlags GURIFlags;
typedef GUriParamsFlags GURIParamsFlags;
typedef GUriHideFlags GURIHideFlags;
typedef struct _GTreeNode GTreeNode;
typedef struct _GStrvBuilder GStrvBuilder;

#if GLIB_MAJOR_VERSION == 2 && GLIB_MINOR_VERSION >= 80
extern GType g_threaded_resolver_get_type(void);

struct _GThreadedResolver {};
struct _GThreadedResolverClass
{
    GResolverClass parent_class;
};
typedef struct _GThreadedResolver GThreadedResolver;
typedef struct _GThreadedResolverClass GThreadedResolverClass;
#endif
