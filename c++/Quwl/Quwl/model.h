#ifndef MODEL_H
#define MODEL_H

#include <QObject>

#include "common.h"
#include "quwiapi.h"


class Model : public QObject
{
    Q_OBJECT

    ProjectsList projects_;

public:
    Model(QObject *parent = nullptr);

public slots:
    void updateProjects(ProjectsList const& projects);

signals:
    void onProjectsUpdated(ProjectsList const& projects);
    void onProjectsUpdateError();
};

#endif // MODEL_H
