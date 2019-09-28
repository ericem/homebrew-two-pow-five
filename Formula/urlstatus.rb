class Urlstatus < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/urlstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/urlstatus/urlstatus-0.1.0.tar.gz"
  sha256 "187eb4e367f2533666668de299bf046df5f3a42e81245b2747d17b1ce8f13b32"

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    mkdir bin
    system "make", "release"
    cp "./urlstatus", bin
  end

end
