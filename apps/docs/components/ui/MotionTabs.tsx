"use client";
import { useState } from "react";
import { AnimatePresence, motion } from "framer-motion";
import { cn } from "@/lib/utils";

type MotionTab = {
  title: string;
  value: string;
  content?: string | React.ReactNode | any;
};

export const MotionTabs = ({
  tabs: propTabs,
  containerClassName,
  activeTabClassName,
  tabClassName,
  contentClassName,
}: {
  tabs: MotionTab[];
  containerClassName?: string;
  activeTabClassName?: string;
  tabClassName?: string;
  contentClassName?: string;
}) => {
  const [active, setActive] = useState<MotionTab>(propTabs[0]);
  const [hoveredTab, setHoveredTab] = useState<string | null>(null);

  const handleTabClick = (tab: MotionTab) => {
    if (tab.value !== active.value) {
      setActive(tab);
    }
  };

  const isActive = (tab: MotionTab) => {
    return tab.value === active.value;
  };

  const isHovered = (tab: MotionTab) => {
    return hoveredTab === tab.value;
  };

  return (
    <div className="w-full">
      {/* Container des tabs */}
      <div
        className={cn(
          "flex flex-row items-center justify-start relative overflow-auto sm:overflow-visible no-visible-scrollbar max-w-full w-full mb-6 gap-2",
          containerClassName
        )}
      >
        {propTabs.map((tab, idx) => (
          <button
            key={tab.value}
            onClick={() => handleTabClick(tab)}
            onMouseEnter={() => setHoveredTab(tab.value)}
            onMouseLeave={() => setHoveredTab(null)}
            className={cn(
              "relative px-6 py-3 rounded-full transition-all duration-200 ease-out",
              "font-medium text-sm whitespace-nowrap",
              "hover:scale-105 active:scale-95",
              "focus:outline-none",
              tabClassName
            )}
            style={{
              transformStyle: "preserve-3d",
            }}
          >
            {isActive(tab) && (
              <motion.div
                layoutId="activeTab"
                transition={{ 
                  type: "spring", 
                  bounce: 0.15, 
                  duration: 0.5 
                }}
                className={cn(
                  "absolute inset-0 bg-accent rounded-full shadow-md",
                  activeTabClassName
                )}
              />
            )}

            {!isActive(tab) && isHovered(tab) && (
              <motion.div
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                exit={{ opacity: 0 }}
                transition={{ duration: 0.2 }}
                className="absolute inset-0 bg-default-200 rounded-full"
              />
            )}

            {/* Texte du tab */}
            <span 
              className={cn(
                "relative block transition-colors duration-200",
                isActive(tab) 
                  ? "text-foreground" 
                  : "text-default-600 hover:text-default-900"
              )}
            >
              {tab.title}
            </span>
          </button>
        ))}
      </div>

      {/* Contenu des tabs */}
      <div className="relative min-h-[200px]">
        <AnimatePresence mode="wait">
          <motion.div
            key={active.value}
            initial={{ 
              opacity: 0, 
              y: 20,
              filter: "blur(4px)"
            }}
            animate={{ 
              opacity: 1, 
              y: 0,
              filter: "blur(0px)"
            }}
            exit={{ 
              opacity: 0, 
              y: -20,
              filter: "blur(4px)"
            }}
            transition={{ 
              duration: 0.3,
              ease: "easeInOut"
            }}
            className={cn(
              "w-full",
              contentClassName
            )}
          >
            {active.content}
          </motion.div>
        </AnimatePresence>
      </div>
    </div>
  );
};