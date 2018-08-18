#ifndef MODEL_HPP
#define MODEL_HPP

#include <QObject>

class ModelObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString widgetName READ widgetName NOTIFY widgetNameChanged)
public:
    ModelObject(QString name) { m_widgetName = name; }
    QString widgetName() {return m_widgetName;}
signals:
    void  widgetNameChanged();
private:
    QString m_widgetName;
};

#endif // MODEL_HPP
