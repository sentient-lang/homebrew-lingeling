class Lingeling < Formula
  desc "SAT solver"
  homepage "http://fmv.jku.at/lingeling/"
  url "http://fmv.jku.at/lingeling/lingeling-bbc-9230380-160707.tar.gz"
  sha256 "7960c69ebd3da1400b0f3135fa08d71abd405c180fc52f785b35ad8a58585126"

  def install
    system "./configure.sh"
    system "make"
    bin.install "lingeling", "plingeling", "ilingeling", "treengeling"
  end

  test do
    system "lingeling", "--help"
  end
end
