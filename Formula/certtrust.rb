class Certtrust < Formula
  desc "Certificate Trust"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certtrust"
  url "https://github.com/ericem/two-pow-five/raw/master/certtrust/release/certtrust-0.1.0.tar.gz"
  sha256 "90e83edfc8edefc9b3c167e1eae2762a8d9d82069dd62cfeab9d61901cc6be48"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certtrust/release"
    cellar :any
    sha256 "50c54c2a9dd688870eff9f1369c8c3da144b3cfb0e1d6bdf6081ad96a425849b" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
