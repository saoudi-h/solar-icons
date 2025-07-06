import React from 'react'

export const IconContainer: React.FC<{ children: React.ReactNode }> = ({ children }) => (
    <div className="rounded-md border to-secondary shadow-md  bg-linear-to-t from-fd-background/80 p-1 ">
        {children}
    </div>
)
