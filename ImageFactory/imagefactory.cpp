#include "imagefactory.h"

#include <QStringList>

ImageFactory::ImageFactory(QObject *parent):
    IPlugin(parent),
    m_extensions(new QStringList)
{
}

ImageFactory::~ImageFactory()
{
    delete m_extensions;
}

bool ImageFactory::initialize(ICore *core)
{
    addExtension("*.jpg");
    addExtension("*.png");
    addExtension("*.gif");
    return true;
}

QStringList *ImageFactory::supportedExtensions() const
{
    return m_extensions;
}

bool ImageFactory::addExtension(const char *extension)
{
    if(!m_extensions->contains(extension))
    {
        m_extensions->operator <<(extension);
        return true;
    }
    return false;
}
