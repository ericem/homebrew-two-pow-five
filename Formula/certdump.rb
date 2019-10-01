class Certdump < Formula
  desc "Certificate Dumper"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certdump"
  url "https://github.com/ericem/two-pow-five/raw/master/certdump/release/certdump-0.3.0.tar.gz"
  sha256 "fee3f7370ebeeac726171b812f6e9a17daf5f010593c2f67abbc069971c2a7fe"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certdump/release"
    cellar :any
    sha256 "a046d2f83c31d3ffa1971e077b388bd35da1dac8f323de7f350d70eae2a2189a" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
