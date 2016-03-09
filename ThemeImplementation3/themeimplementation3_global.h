#ifndef THEMEIMPLEMENTATION3_GLOBAL_H
#define THEMEIMPLEMENTATION3_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(THEMEIMPLEMENTATION3_LIBRARY)
#  define THEMEIMPLEMENTATION3SHARED_EXPORT Q_DECL_EXPORT
#else
#  define THEMEIMPLEMENTATION3SHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // THEMEIMPLEMENTATION3_GLOBAL_H
