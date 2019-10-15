class Levelup < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/levelup"
  url "https://github.com/ericem/two-pow-five/raw/master/levelup/release/levelup-0.1.0.tar.gz"
  sha256 "047d5814c07bb22c23018b2cd7b23f4f5eb82eea52fd0a439f4c7edef89bc23e"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/levelup/release"
    cellar :any
    sha256 "f920b5fa056ccab0385836392542be0ba05bd51bd87a2697620c46cd36daaccd" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
