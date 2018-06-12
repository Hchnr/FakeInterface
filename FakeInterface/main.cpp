#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickView>

#include "model.hpp"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    // model of left toolbar
    QList<QObject*> leftList;
    leftList.append(new ModelObject("Bookmark"));
    leftList.append(new ModelObject("Chat"));
    leftList.append(new ModelObject("Random"));
    leftList.append(new ModelObject("Loop"));

    // model of center toolbar
    QList<QObject*> centerList;
    centerList.append(new ModelObject("Slower"));
    centerList.append(new ModelObject("Previous"));
    centerList.append(new ModelObject("Play"));
    centerList.append(new ModelObject("Next"));
    centerList.append(new ModelObject("Faster"));

    //model of right toolbar
    QList<QObject*> rightList;
    rightList.append(new ModelObject("Fullscreen"));
    rightList.append(new ModelObject("Playlist"));
    rightList.append(new ModelObject("TBD"));


    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    QQmlContext *ctxt = view.rootContext();
    ctxt->setContextProperty("leftList", QVariant::fromValue(leftList));
    ctxt->setContextProperty("centerList", QVariant::fromValue(centerList));
    ctxt->setContextProperty("rightList", QVariant::fromValue(rightList));

    view.setSource(QUrl("qrc:/main.qml"));
    // view.show();

    return app.exec();
}
