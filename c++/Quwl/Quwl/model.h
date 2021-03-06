#ifndef MODEL_H
#define MODEL_H

#include <QObject>

#include "common.h"
#include "projectslistmodel.h"
#include "quwiapi.h"


class Model : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool hasToken READ getHasToken NOTIFY hasTokenChanged)

    bool hasToken_;
    ProjectsList projects_;

public:
    Model(QuwiApi *api, ProjectsListModel *projectModel, QObject *parent = nullptr);

    bool getHasToken() const noexcept { return hasToken_; }
    void setHasToken(bool const hasToken) noexcept;

public slots:
    ProjectsList const& getProjects() const noexcept { return projects_; }
    void setProjects(ProjectsList const& projects);

signals:
    void hasTokenChanged(bool const hasToken);
    void projectsChanged(ProjectsList const& projects);
    void onProjectsUpdateError();
};

#endif // MODEL_H
