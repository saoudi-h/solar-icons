import { 
  createIcons, 
  HeartBoldIcon, 
  AccessibilityLineDuotoneIcon, 
  HomeAngleBoldDuotoneIcon, 
  ArrowRightLinearIcon 
} from '@solar-icons/js'

try {
  createIcons({
    icons: {
      HeartBoldIcon,
      AccessibilityLineDuotoneIcon,
      HomeAngleBoldDuotoneIcon,
      ArrowRightLinearIcon
    }
  })
  console.log('createIcons executed successfully!')
} catch (e) {
  console.error('Error executing createIcons:', e)
}
