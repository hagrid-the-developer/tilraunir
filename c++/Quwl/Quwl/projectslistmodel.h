#ifndef PROJECTSLISTMODEL_H
#define PROJECTSLISTMODEL_H

#include <QAbstractListModel>

#include "common.h"

class ProjectsListModel : public QAbstractListModel
{
    Q_OBJECT

    ProjectsList l_;

public:
    enum Roles {
          NameRole = Qt::UserRole + 1
        , LogoUrlRole
        , IdRole
        , PositionRole
        , IsActiveRole
    };
    explicit ProjectsListModel(QObject *parent = nullptr);

    QHash<int, QByteArray> roleNames() const override;

    Qt::ItemFlags flags(const QModelIndex &index) const override
    {
        return Qt::NoItemFlags;
    }

    // Header:
    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override;

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = NameRole) const override;

public slots:
    void update(ProjectsList const& l);
};

#endif // PROJECTSLISTMODEL_H
