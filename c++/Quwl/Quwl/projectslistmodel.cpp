#include <QDebug>

#include "projectslistmodel.h"

ProjectsListModel::ProjectsListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

QHash<int, QByteArray> ProjectsListModel::roleNames() const
{
    return {
        {NameRole, "name"},
        {LogoUrlRole, "logo_url"},
        {IdRole, "id"},
        {PositionRole, "position"},
        {IsActiveRole, "is_active"},
    };
}

QVariant ProjectsListModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    return QAbstractListModel::headerData(section, orientation, role);
}

int ProjectsListModel::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid())
        return 0;

    return l_.size();
}

QVariant ProjectsListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return {};

    auto const row = index.row();
    if (row >= l_.size())
        return {};

    auto const& item = l_[row];
    switch (role)
    {
    case NameRole:
        return {item.name_};
    case LogoUrlRole:
        return {item.logoUrl_};
    case IdRole:
        return {item.id_};
    case PositionRole:
        return {item.position_};
    case IsActiveRole:
        return {item.isActive_};
    }

    return {};
}

void ProjectsListModel::update(const ProjectsList &l)
{
    qDebug() << __func__ << "; list-length: " << l.size();

    if (l == l_)
        return;

    emit layoutAboutToBeChanged();
    l_ = l;

    QModelIndex const topLet = createIndex(0, 0, this);
    QModelIndex const bottomRight = createIndex(l_.size(), 1, this);

    changePersistentIndex(topLet, bottomRight);
    emit layoutChanged();
    //emit dataChanged(topLet, bottomRight);
}
