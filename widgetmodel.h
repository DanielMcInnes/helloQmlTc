#ifndef WIDGETMODEL_H
#define WIDGETMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <qqmlintegration.h>

class WidgetModel : public QAbstractListModel
{
	Q_OBJECT
	QML_ELEMENT
public:
	explicit WidgetModel(QObject *parent = nullptr);
};

#endif // WIDGETMODEL_H
