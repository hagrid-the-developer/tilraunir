#ifndef COMMON_H
#define COMMON_H

#include <QString>
#include <QUrl>
#include <QVector>

class Error: public std::runtime_error
{
public:
    Error(): std::runtime_error{"Unknown error"} {}
};

struct ProjectItem
{
    QString name_;
    QUrl logoUrl_;
    int id_;
    int position_;
    bool isActive_;

    friend bool operator==(ProjectItem const& a, ProjectItem const& b)
    {
#define EQ($NAME) (a.$NAME == b.$NAME)
        return true
               && EQ(name_)
               && EQ(logoUrl_)
               && EQ(id_)
               && EQ(position_)
               && EQ(isActive_);
#undef EQ
    }
};

using ProjectsList = QVector<ProjectItem>;

#endif // COMMON_H
