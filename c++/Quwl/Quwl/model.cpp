#include "model.h"

Model::Model(QObject *parent)
    : QObject(parent)
{ }


// FIXME: Does Toggl send requests to server from model or from controller?
void Model::updateProjects(const ProjectsList &projects)
{
    if(projects_ != projects)
    {
        projects_ = projects;
        emit onProjectsUpdated(projects_);
    }
}

