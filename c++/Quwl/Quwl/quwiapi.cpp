#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QMessageLogger>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>

#include <memory>

#include "quwiapi.h"

namespace
{

static const auto URL = QStringLiteral("https://api.quwi.com/v2/");
static const auto URL_AUTH = URL + "auth/login";
static const auto URL_PROJECTS_LIST = URL + "projects-manage/index";

template <typename T>
static T jget(QJsonObject const &obj, char const name[])
{
    auto const it = obj.find(name);
    if (obj.end() == it)
    {
        throw Error{};
    }

    auto const& var = it.value().toVariant();
    if (!var.canConvert<T>())
    {
        throw Error{};
    }

     return var.value<T>();
}

} /* Anonymous Namespace */

void QuwiApi::onNetworkFinished(QNetworkReply *reply)
{
}

void QuwiApi::onTokenReqFinished(QNetworkReply *reply)
{
    try
    {
        if (reply->error())
        {
            throw Error{};
        }

        QJsonParseError parser_err;
        auto const doc = QJsonDocument::fromJson(reply->readAll(), &parser_err);
        qDebug() << __func__ << ": json: " << doc << ";";
        if (doc.isNull())
        {
            throw Error{};
        }

        auto const& obj = doc.object();
        token_ = jget<QString>(obj, "token");
        if (token_.isEmpty())
        {
            throw Error{};
        }

        emit replyTokenFinished();
    }
    catch (Error const& e)
    {
        token_.clear();
        emit replyTokenError(e);
    }

    qDebug() << "token: " << token_;
}

void QuwiApi::onProjectsListFinished(QNetworkReply *reply)
{
    qDebug() << __func__;
    try
    {
        if (reply->error())
        {
            qDebug() << __func__ << ": reply->error: " << reply->error();
            throw Error{};
        }

        QJsonParseError parser_err;
        auto const doc = QJsonDocument::fromJson(reply->readAll(), &parser_err);
        qDebug() << __func__ << ": json: " << doc << ";";
        if (doc.isNull())
        {
            throw Error{};
        }

        ProjectsList list{};

        auto obj = doc.object();
        auto it_items = obj.find("projects");
        if (it_items == obj.end())
        {
            throw Error{};
        }
        for (auto const &item: it_items->toArray())
        {
            auto const& o = item.toObject();
            auto const name = jget<QString>(o, "name");
            QUrl const logoUrl = jget<QString>(o, "logo_url");
            auto const id = jget<int>(o, "id");
            auto const position = jget<int>(o, "position");
            auto const isActive = jget<bool>(o, "is_active");

            qDebug() << __func__ << "; item: " << o << ";";
            list.push_back(ProjectItem{name, logoUrl, id, position, isActive});
            list.push_back(ProjectItem{name, logoUrl, id, position, isActive});
            list.push_back(ProjectItem{name, logoUrl, id, position, isActive});
            list.push_back(ProjectItem{name, logoUrl, id, position, isActive});
            list.push_back(ProjectItem{name, logoUrl, id, position, isActive});
        }
        emit projectsListFinished(list);
    }
    catch (Error const& e)
    {
        emit projectsListError(e);
    }
}

QuwiApi::QuwiApi(QObject *parent)
    : QObject(parent)
    , net_(this)
{
    connect(&net_, &QNetworkAccessManager::finished, this, &QuwiApi::onNetworkFinished);
}

void QuwiApi::reqToken(const QString &email, const QString &password)
{
    QJsonObject userCreditentials
    {
        {"email", email},
        {"password", password}
    };
    auto p_data = std::make_unique<QByteArray>(QJsonDocument{userCreditentials}.toJson(QJsonDocument::Compact));
    qDebug() << __func__ << " : " << *p_data;

    QNetworkRequest req{URL_AUTH};
    req.setRawHeader("Content-Type", "application/json");

    QNetworkReply *reply = net_.post(req, *p_data);
    connect(reply, &QNetworkReply::finished, this, [p_data = std::move(p_data), reply, this]
    {
        this->onTokenReqFinished(reply);
    });
}

void QuwiApi::reqProjectsList()
{
    qDebug() << __func__;

    QNetworkRequest req{URL_PROJECTS_LIST};
    req.setRawHeader("Authorization",
                     (QStringLiteral("Bearer ") + token_).toLatin1());
    QNetworkReply *reply = net_.get(req);
    connect(reply, &QNetworkReply::finished, this, [reply, this]
    {
        this->onProjectsListFinished(reply);
    });
}
