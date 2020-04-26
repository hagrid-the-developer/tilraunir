#ifndef QUWIAPI_H
#define QUWIAPI_H

#include <QObject>
#include <QNetworkReply>
#include <QNetworkAccessManager>

#include "common.h"

class QuwiApi : public QObject
{
    Q_OBJECT

    QNetworkAccessManager net_;
    QString token_;

    void onNetworkFinished(QNetworkReply* reply);

private slots:
    void onTokenReqFinished(QNetworkReply *reply);
    void onProjectsListFinished(QNetworkReply *reply);

public:
    explicit QuwiApi(QObject *parent = nullptr);

public slots:
    void reqToken(QString const& email, QString const& password);
    void reqProjectsList();

signals:
    void replyTokenFinished();
    void replyTokenError(Error const&);

    void projectsListFinished(ProjectsList const& list);
    void projectsListError(Error const&);

};

#endif // QUWIAPI_H
