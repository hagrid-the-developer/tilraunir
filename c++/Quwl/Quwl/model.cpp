#include "model.h"

Model::Model(QuwiApi *api, QObject *parent)
    : QObject(parent)
{
    connect(api, &QuwiApi::replyTokenFinished, this, [this] {
        this->setHasToken(true);
    });
    connect(api, &QuwiApi::replyTokenError, this, [this] {
        this->setHasToken(false);
    });
}

void Model::setHasToken(const bool hasToken) noexcept
{
    if (hasToken_ == hasToken)
        return;

    hasToken_ = hasToken;
    emit hasTokenChanged(hasToken_);
}

// FIXME: Does Toggl send requests to server from model or from controller?
void Model::setProjects(const ProjectsList &projects)
{
    if (projects_ == projects)
        return;

    projects_ = projects;
    emit projectsChanged(projects_);
}
