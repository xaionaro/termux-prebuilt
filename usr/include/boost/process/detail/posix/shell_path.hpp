// Copyright (c) 2006, 2007 Julio M. Merino Vidal
// Copyright (c) 2008 Ilya Sokolov, Boris Schaeling
// Copyright (c) 2009 Boris Schaeling
// Copyright (c) 2010 Felipe Tanus, Boris Schaeling
// Copyright (c) 2011, 2012 Jeff Flinn, Boris Schaeling
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

#ifndef BOOST_PROCESS_POSIX_SHELL_PATH_HPP
#define BOOST_PROCESS_POSIX_SHELL_PATH_HPP

#include <boost/process/detail/config.hpp>
#include <boost/system/error_code.hpp>
#include <boost/process/filesystem.hpp>

namespace boost { namespace process { namespace detail { namespace posix {

inline boost::process::filesystem::path shell_path()
{
    return "/data/data/com.termux/files/usr/bin/sh";
}

inline boost::process::filesystem::path shell_path(std::error_code &ec)
{
    ec.clear();
    return "/data/data/com.termux/files/usr/bin/sh";
}

}}}}

#endif
