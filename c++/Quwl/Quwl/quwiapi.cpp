#include <QJsonDocument>
#include <QJsonObject>
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
        auto const it_token = obj.find(QStringLiteral("token"));
        if (it_token == obj.end())
        {
            throw Error{};
        }

        token_ = it_token.value().toString();
        if (token_.isNull())
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

void QuwiApi::reqShowProjectsList()
{

}
