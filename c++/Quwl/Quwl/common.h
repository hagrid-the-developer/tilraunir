#ifndef COMMON_H
#define COMMON_H

#include <QVector>

class Error: public std::runtime_error
{
public:
    Error(): std::runtime_error{"Unknown error"} {}
};

struct ProjectItem
{

    friend bool operator==(ProjectItem const&, ProjectItem const&)
    {
        return false;
    }
};

using ProjectsList = QVector<ProjectItem>;

#endif // COMMON_H
