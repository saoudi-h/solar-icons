import { StatusBar } from 'expo-status-bar';
import React, { useState } from 'react';
import {
  StyleSheet,
  Text,
  View,
  ScrollView,
  TouchableOpacity,
} from 'react-native';

// Test different import methods
import { Home, User, Settings, Heart, Star, Magnifier } from '@solar-icons/react-native/Bold';
import {
  Home as HomeLinear,
  User as UserLinear,
  Heart as HeartLinear,
  Star as StarLinear,
  Magnifier as SearchLinear,
  ArrowRight,
  ArrowLeft,
  MenuDots as Menu,
  CloseCircle,
} from '@solar-icons/react-native/Linear';
import {
  Home as HomeOutline,
  User as UserOutline,
} from '@solar-icons/react-native/Outline';
import {
  Home as HomeBroken,
  User as UserBroken,
} from '@solar-icons/react-native/Broken';
import {
  Home as HomeBoldDuotone,
  User as UserBoldDuotone,
} from '@solar-icons/react-native/BoldDuotone';
import {
  Home as HomeLineDuotone,
  User as UserLineDuotone,
} from '@solar-icons/react-native/LineDuotone';

// Test global styled imports (new feature)
import {
  HomeBold as HomeBoldGlobal,
  HomeLinear as HomeLinearGlobal,
  UserBold as UserBoldGlobal,
  UserLinear as UserLinearGlobal,
  HeartBold as HeartBoldGlobal,
  StarLinear as StarLinearGlobal,
} from '@solar-icons/react-native';

// Test granular per-icon imports (maximum tree-shaking)
import { AltArrowDown } from '@solar-icons/react-native/category/arrows/Linear/AltArrowDown'
import { AltArrowUp } from '@solar-icons/react-native/category/arrows/Linear/AltArrowUp'
import { AltArrowLeft } from '@solar-icons/react-native/category/arrows/Bold/AltArrowLeft'
import { AltArrowRight } from '@solar-icons/react-native/category/arrows/Bold/AltArrowRight'
import { Magnifier as MagnifierGranular } from '@solar-icons/react-native/category/search/Outline/Magnifier'
import { Settings as SettingsGranular } from '@solar-icons/react-native/category/settings/BoldDuotone/Settings'



type IconStyle = 'Bold' | 'Linear' | 'Outline' | 'Broken' | 'BoldDuotone' | 'LineDuotone';

export default function App() {
  const [selectedStyle, setSelectedStyle] = useState<IconStyle>('Bold');
  const [iconSize, setIconSize] = useState(32);
  const [iconColor, setIconColor] = useState('#000000');
  const [mirrored, setMirrored] = useState(false);

  const styles: IconStyle[] = ['Bold', 'Linear', 'Outline', 'Broken', 'BoldDuotone', 'LineDuotone'];

  // Icon components by style
  const iconsByStyle = {
    Bold: [
      { name: 'Home', Component: Home },
      { name: 'User', Component: User },
      { name: 'Settings', Component: Settings },
      { name: 'Heart', Component: Heart },
      { name: 'Star', Component: Star },
      { name: 'Search', Component: Magnifier },
    ],
    Linear: [
      { name: 'Home', Component: HomeLinear },
      { name: 'User', Component: UserLinear },
      { name: 'Heart', Component: HeartLinear },
      { name: 'Star', Component: StarLinear },
      { name: 'Search', Component: SearchLinear },
      { name: 'ArrowRight', Component: ArrowRight },
      { name: 'ArrowLeft', Component: ArrowLeft },
      { name: 'Menu', Component: Menu },
      { name: 'Close', Component: CloseCircle },
    ],
    Outline: [
      { name: 'Home', Component: HomeOutline },
      { name: 'User', Component: UserOutline },
    ],
    Broken: [
      { name: 'Home', Component: HomeBroken },
      { name: 'User', Component: UserBroken },
    ],
    BoldDuotone: [
      { name: 'Home', Component: HomeBoldDuotone },
      { name: 'User', Component: UserBoldDuotone },
    ],
    LineDuotone: [
      { name: 'Home', Component: HomeLineDuotone },
      { name: 'User', Component: UserLineDuotone },
    ],
  };

  return (
    <View style={appStyles.container}>
      <StatusBar style="auto" />

      <ScrollView style={appStyles.scrollView}>
        {/* Header */}
        <View style={appStyles.header}>
          <Text style={appStyles.title}>Solar Icons Test</Text>
          <Text style={appStyles.subtitle}>React Native Package ✅</Text>
        </View>

        {/* Style Selector */}
        <View style={appStyles.section}>
          <Text style={appStyles.sectionTitle}>Icon Style</Text>
          <ScrollView horizontal showsHorizontalScrollIndicator={false}>
            {styles.map((style) => (
              <TouchableOpacity
                key={style}
                style={[
                  appStyles.styleButton,
                  selectedStyle === style && appStyles.styleButtonActive,
                ]}
                onPress={() => setSelectedStyle(style)}
              >
                <Text
                  style={[
                    appStyles.styleButtonText,
                    selectedStyle === style && appStyles.styleButtonTextActive,
                  ]}
                >
                  {style}
                </Text>
              </TouchableOpacity>
            ))}
          </ScrollView>
        </View>

        {/* Controls */}
        <View style={appStyles.section}>
          <Text style={appStyles.sectionTitle}>Controls</Text>

          {/* Size Control */}
          <View style={appStyles.control}>
            <Text style={appStyles.controlLabel}>Size: {iconSize}px</Text>
            <View style={appStyles.buttonGroup}>
              <TouchableOpacity
                style={appStyles.controlButton}
                onPress={() => setIconSize(Math.max(16, iconSize - 8))}
              >
                <Text>-</Text>
              </TouchableOpacity>
              <TouchableOpacity
                style={appStyles.controlButton}
                onPress={() => setIconSize(Math.min(96, iconSize + 8))}
              >
                <Text>+</Text>
              </TouchableOpacity>
            </View>
          </View>

          {/* Color Control */}
          <View style={appStyles.control}>
            <Text style={appStyles.controlLabel}>Color</Text>
            <View style={appStyles.buttonGroup}>
              {['#000000', '#ff0000', '#00ff00', '#0000ff', '#ff00ff'].map((color) => (
                <TouchableOpacity
                  key={color}
                  style={[
                    appStyles.colorButton,
                    { backgroundColor: color },
                    iconColor === color && appStyles.colorButtonActive,
                  ]}
                  onPress={() => setIconColor(color)}
                />
              ))}
            </View>
          </View>

          {/* Mirrored Control */}
          <View style={appStyles.control}>
            <Text style={appStyles.controlLabel}>Mirrored</Text>
            <TouchableOpacity
              style={[appStyles.toggleButton, mirrored && appStyles.toggleButtonActive]}
              onPress={() => setMirrored(!mirrored)}
            >
              <Text style={appStyles.toggleButtonText}>
                {mirrored ? 'ON' : 'OFF'}
              </Text>
            </TouchableOpacity>
          </View>
        </View>

        {/* Icon Gallery */}
        <View style={appStyles.section}>
          <Text style={appStyles.sectionTitle}>
            Icons ({iconsByStyle[selectedStyle].length})
          </Text>
          <View style={appStyles.iconGrid}>
            {iconsByStyle[selectedStyle].map(({ name, Component }) => (
              <View key={name} style={appStyles.iconCard}>
                <View style={appStyles.iconWrapper}>
                  <Component
                    size={iconSize}
                    color={iconColor}
                    mirrored={mirrored}
                  />
                </View>
                <Text style={appStyles.iconName}>{name}</Text>
              </View>
            ))}
          </View>
        </View>

        {/* Test Cases */}
        <View style={appStyles.section}>
          <Text style={appStyles.sectionTitle}>Test Cases</Text>

          {/* Default Props */}
          <View style={appStyles.testCase}>
            <Text style={appStyles.testCaseTitle}>1. Default Props</Text>
            <View style={appStyles.testCaseContent}>
              <Home />
              <Text style={appStyles.testCaseText}>Size: 24, Color: currentColor</Text>
            </View>
          </View>

          {/* Custom Size */}
          <View style={appStyles.testCase}>
            <Text style={appStyles.testCaseTitle}>2. Custom Size</Text>
            <View style={appStyles.testCaseContent}>
              <User size={48} />
              <Text style={appStyles.testCaseText}>Size: 48</Text>
            </View>
          </View>

          {/* Custom Color */}
          <View style={appStyles.testCase}>
            <Text style={appStyles.testCaseTitle}>3. Custom Color</Text>
            <View style={appStyles.testCaseContent}>
              <Heart size={40} color="#ff0000" />
              <Text style={appStyles.testCaseText}>Color: #ff0000</Text>
            </View>
          </View>

          {/* Mirrored */}
          <View style={appStyles.testCase}>
            <Text style={appStyles.testCaseTitle}>4. Mirrored Icon</Text>
            <View style={appStyles.testCaseContent}>
              <ArrowRight size={40} />
              <ArrowRight size={40} mirrored />
              <Text style={appStyles.testCaseText}>Normal vs Mirrored</Text>
            </View>
          </View>

          {/* Multiple Styles */}
          <View style={appStyles.testCase}>
            <Text style={appStyles.testCaseTitle}>5. All Styles (Home Icon)</Text>
            <View style={appStyles.testCaseContent}>
              <View style={appStyles.styleComparison}>
                <View style={appStyles.styleComparisonItem}>
                  <Home size={32} />
                  <Text style={appStyles.styleComparisonText}>Bold</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HomeLinear size={32} />
                  <Text style={appStyles.styleComparisonText}>Linear</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HomeOutline size={32} />
                  <Text style={appStyles.styleComparisonText}>Outline</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HomeBroken size={32} />
                  <Text style={appStyles.styleComparisonText}>Broken</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HomeBoldDuotone size={32} />
                  <Text style={appStyles.styleComparisonText}>BoldDuo</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HomeLineDuotone size={32} />
                  <Text style={appStyles.styleComparisonText}>LineDuo</Text>
                </View>
              </View>
            </View>
          </View>

          {/* Global Styled Imports */}
          <View style={appStyles.testCase}>
            <Text style={appStyles.testCaseTitle}>6. Global Styled Imports (New!)</Text>
            <View style={appStyles.testCaseContent}>
              <View style={appStyles.styleComparison}>
                <View style={appStyles.styleComparisonItem}>
                  <HomeBoldGlobal size={32} />
                  <Text style={appStyles.styleComparisonText}>HomeBold</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HomeLinearGlobal size={32} />
                  <Text style={appStyles.styleComparisonText}>HomeLinear</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <UserBoldGlobal size={32} />
                  <Text style={appStyles.styleComparisonText}>UserBold</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <UserLinearGlobal size={32} />
                  <Text style={appStyles.styleComparisonText}>UserLinear</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <HeartBoldGlobal size={32} color="#ff0000" />
                  <Text style={appStyles.styleComparisonText}>HeartBold</Text>
                </View>
                <View style={appStyles.styleComparisonItem}>
                  <StarLinearGlobal size={32} color="#ffd700" />
                  <Text style={appStyles.styleComparisonText}>StarLinear</Text>
                </View>
              </View>
              <Text style={[appStyles.testCaseText, { marginTop: 12 }]}>
                ✨ Import from root: import {'{ HomeBold, UserLinear }'} from '@solar-icons/react-native'
              </Text>
            </View>
          </View>
        </View>

        {/* Granular Per-Icon Imports */}
        <View style={appStyles.testCase}>
          <Text style={appStyles.testCaseTitle}>7. Granular Per-Icon Imports (Maximum Tree-Shaking)</Text>
          <View style={appStyles.testCaseContent}>
            <View style={appStyles.styleComparison}>
              <View style={appStyles.styleComparisonItem}>
                <AltArrowDown size={32} />
                <Text style={appStyles.styleComparisonText}>AltArrowDown</Text>
                <Text style={[appStyles.styleComparisonText, { fontSize: 8, color: '#999' }]}>Linear</Text>
              </View>
              <View style={appStyles.styleComparisonItem}>
                <AltArrowUp size={32} />
                <Text style={appStyles.styleComparisonText}>AltArrowUp</Text>
                <Text style={[appStyles.styleComparisonText, { fontSize: 8, color: '#999' }]}>Linear</Text>
              </View>
              <View style={appStyles.styleComparisonItem}>
                <AltArrowLeft size={32} />
                <Text style={appStyles.styleComparisonText}>AltArrowLeft</Text>
                <Text style={[appStyles.styleComparisonText, { fontSize: 8, color: '#999' }]}>Bold</Text>
              </View>
              <View style={appStyles.styleComparisonItem}>
                <AltArrowRight size={32} />
                <Text style={appStyles.styleComparisonText}>AltArrowRight</Text>
                <Text style={[appStyles.styleComparisonText, { fontSize: 8, color: '#999' }]}>Bold</Text>
              </View>
              <View style={appStyles.styleComparisonItem}>
                <MagnifierGranular size={32} color="#007AFF" />
                <Text style={appStyles.styleComparisonText}>Magnifier</Text>
                <Text style={[appStyles.styleComparisonText, { fontSize: 8, color: '#999' }]}>Outline</Text>
              </View>
              <View style={appStyles.styleComparisonItem}>
                <SettingsGranular size={32} color="#666" />
                <Text style={appStyles.styleComparisonText}>Settings</Text>
                <Text style={[appStyles.styleComparisonText, { fontSize: 8, color: '#999' }]}>BoldDuotone</Text>
              </View>
            </View>
            <Text style={[appStyles.testCaseText, { marginTop: 12 }]}>
              🎯 Direct imports: import {'{ AltArrowDown }'} from '@solar-icons/react-native/category/arrows/Linear/AltArrowDown'
            </Text>
            <Text style={[appStyles.testCaseText, { marginTop: 4, fontStyle: 'italic' }]}>
              ✅ Best for tree-shaking - only loads the exact icon needed
            </Text>
          </View>
        </View>

        {/* Import Methods Summary */ }
  <View style={appStyles.section}>
    <Text style={appStyles.sectionTitle}>📚 Import Methods Summary</Text>

    <View style={appStyles.importMethodCard}>
      <Text style={appStyles.importMethodTitle}>1️⃣ Style Bundle Imports</Text>
      <Text style={appStyles.importMethodCode}>
        import {'{ Home, User }'} from '@solar-icons/react-native/Bold'
      </Text>
      <Text style={appStyles.importMethodDescription}>
        ✅ Simple and clean{'\n'}
        ⚠️ Loads entire style bundle
      </Text>
    </View>

    <View style={appStyles.importMethodCard}>
      <Text style={appStyles.importMethodTitle}>2️⃣ Global Styled Imports</Text>
      <Text style={appStyles.importMethodCode}>
        import {'{ HomeBold, UserLinear }'} from '@solar-icons/react-native'
      </Text>
      <Text style={appStyles.importMethodDescription}>
        ✅ Intuitive naming{'\n'}
        ✅ Mix styles in one import{'\n'}
        ⚠️ Loads all icons (relies on bundler tree-shaking)
      </Text>
    </View>

    <View style={appStyles.importMethodCard}>
      <Text style={appStyles.importMethodTitle}>3️⃣ Granular Per-Icon Imports</Text>
      <Text style={appStyles.importMethodCode}>
        import {'{ Home }'} from '@solar-icons/react-native/category/ui/Bold/Home'
      </Text>
      <Text style={appStyles.importMethodDescription}>
        ✅ Maximum tree-shaking{'\n'}
        ✅ Only loads exact icon{'\n'}
        ⚠️ Longer import paths
      </Text>
    </View>
  </View>

  {/* Success Message */ }
        <View style={appStyles.successSection}>
          <Text style={appStyles.successTitle}>🎉 Package Working!</Text>
          <Text style={appStyles.successText}>
            All imports successful. Icons rendering correctly.
          </Text>
        </View>

        <View style={{ height: 40 }} />
      </ScrollView >
    </View >
  );
}

const appStyles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
    paddingTop: 40,
  },
  scrollView: {
    flex: 1,
  },
  header: {
    padding: 20,
    backgroundColor: '#fff',
    borderBottomWidth: 1,
    borderBottomColor: '#e0e0e0',
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#333',
  },
  subtitle: {
    fontSize: 16,
    color: '#666',
    marginTop: 4,
  },
  section: {
    padding: 20,
    backgroundColor: '#fff',
    marginTop: 10,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
    marginBottom: 12,
  },
  styleButton: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 20,
    backgroundColor: '#f0f0f0',
    marginRight: 8,
  },
  styleButtonActive: {
    backgroundColor: '#007AFF',
  },
  styleButtonText: {
    fontSize: 14,
    color: '#333',
  },
  styleButtonTextActive: {
    color: '#fff',
  },
  control: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 12,
  },
  controlLabel: {
    fontSize: 14,
    color: '#666',
  },
  buttonGroup: {
    flexDirection: 'row',
    gap: 8,
  },
  controlButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: '#f0f0f0',
    justifyContent: 'center',
    alignItems: 'center',
  },
  colorButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    borderWidth: 2,
    borderColor: 'transparent',
  },
  colorButtonActive: {
    borderColor: '#007AFF',
  },
  toggleButton: {
    paddingHorizontal: 20,
    paddingVertical: 8,
    borderRadius: 16,
    backgroundColor: '#f0f0f0',
  },
  toggleButtonActive: {
    backgroundColor: '#007AFF',
  },
  toggleButtonText: {
    fontSize: 14,
    fontWeight: '600',
  },
  iconGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 12,
  },
  iconCard: {
    width: 80,
    alignItems: 'center',
  },
  iconWrapper: {
    width: 60,
    height: 60,
    borderRadius: 12,
    backgroundColor: '#f9f9f9',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 6,
  },
  iconName: {
    fontSize: 11,
    color: '#666',
    textAlign: 'center',
  },
  testCase: {
    marginBottom: 20,
    padding: 16,
    backgroundColor: '#f9f9f9',
    borderRadius: 8,
  },
  testCaseTitle: {
    fontSize: 14,
    fontWeight: '600',
    color: '#333',
    marginBottom: 12,
  },
  testCaseContent: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 12,
  },
  testCaseText: {
    fontSize: 12,
    color: '#666',
  },
  styleComparison: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 16,
  },
  styleComparisonItem: {
    alignItems: 'center',
  },
  styleComparisonText: {
    fontSize: 10,
    color: '#666',
    marginTop: 4,
  },
  successSection: {
    margin: 20,
    padding: 20,
    backgroundColor: '#d4edda',
    borderRadius: 8,
    borderWidth: 1,
    borderColor: '#c3e6cb',
  },
  successTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#155724',
    marginBottom: 8,
  },
  successText: {
    fontSize: 14,
    color: '#155724',
  },
  importMethodCard: {
    backgroundColor: '#f9f9f9',
    borderRadius: 8,
    padding: 16,
    marginBottom: 12,
    borderLeftWidth: 4,
    borderLeftColor: '#007AFF',
  },
  importMethodTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
    marginBottom: 8,
  },
  importMethodCode: {
    fontFamily: 'monospace',
    fontSize: 12,
    backgroundColor: '#fff',
    padding: 8,
    borderRadius: 4,
    marginBottom: 8,
    color: '#007AFF',
  },
  importMethodDescription: {
    fontSize: 12,
    color: '#666',
    lineHeight: 18,
  },
});
