echo "🚀 Cleaning iOS build and CocoaPods cache..."

# Navigate to iOS directory
cd ios || exit

# Remove existing Pod files
rm -rf Pods
rm -rf build
rm -rf Podfile.lock

# Clean CocoaPods cache
pod cache clean --all
pod deintegrate
pod clean

echo "✅ CocoaPods cache cleaned."

# Reinstall CocoaPods
echo "🚀 Installing CocoaPods dependencies..."

# Check system architecture
ARCH=$(uname -m)
if [ "$ARCH" = "arm64" ]; then
    echo "🔹 Detected Apple Silicon (M1/M2/M3)"
    sudo chown -R $(whoami) .
    sudo gem install cocoapods-deintegrate cocoapods-clean
    sudo arch -arm64 gem install ffi
    arch -arm64 pod repo update
    arch -arm64 pod install
else
    echo "🔹 Detected Intel Mac (x86_64)"
    sudo gem install cocoapods-deintegrate cocoapods-clean
    sudo arch -x86_64 gem install ffi
    arch -x86_64 pod repo update
    arch -x86_64 pod install
fi

echo "✅ CocoaPods installation complete!"

echo "✅ All steps completed successfully!"